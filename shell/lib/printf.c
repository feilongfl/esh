/**
 * Copyright 2021 Google LLC
 *
 * Licensed under the Apache License, Version 2.0 (the "License");
 * you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 *
 *     https://www.apache.org/licenses/LICENSE-2.0
 *
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
 **/

#include "printf.h"
#include <stdarg.h>
#include <stdbool.h>

extern int (*__read_char__)(void);
extern void (*__write_char__)(char c);

typedef enum {
    CHECK_CH,
    PARSE_FMT_STR,
} printf_state;

static char hextable[] = {'0', '1', '2', '3', '4', '5', '6', '7',
                          '8', '9', 'A', 'B', 'C', 'D', 'E', 'F'};

static void outchar(const char c) {
    __write_char__(c);
}

static void outstr(const char *str) {
    while (*str != '\0') {
        outchar(*str);
        str++;
    }
}

static bool printf_numbers(const char fmt, va_list *args, int l_count) {
    char num[MAX_DIGITS];
    int num_len = 0;

    switch (fmt) {
        case 'd': {
            long long int value = 0;

            if (l_count == 0) {
                value = va_arg(*args, int);
            } else if (l_count == 1) {
                value = va_arg(*args, long int);
            } else if (l_count == 2) {
                value = va_arg(*args, long long int);
            } else {
                return false;
            }

            // handle negative
            if (value < 0) {
                outchar('-');
                value = -value;
            }

            do {
                num[num_len++] = hextable[value % 10];
                value = value / 10;
            } while (value > 0);

            while (num_len > 0) {
                outchar(num[--num_len]);
            };
            break;
        }
        case 'u':
        case 'x':
        case 'X': {
            long long unsigned int value = 0;

            if (l_count == 0) {
                value = va_arg(*args, unsigned int);
            } else if (l_count == 1) {
                value = va_arg(*args, long unsigned int);
            } else if (l_count == 2) {
                value = va_arg(*args, long long unsigned int);
            } else {
                return false;
            }

            if (fmt == 'u') {
                do {
                    num[num_len++] = hextable[value % 10];
                    value = value / 10;
                } while (value > 0);

                while (num_len > 0) {
                    outchar(num[--num_len]);
                };
            } else {
                if (value == 0) {
                    outchar(hextable[0]);
                } else {
                    // print hex
                    int start_bit = LAST_NIBBLE_FIRST_BIT;
                    bool leading_zero_ignored = false;

                    while (start_bit >= 0) {
                        int val = (value >> start_bit) & 0xF;
                        if (val || leading_zero_ignored) {
                            leading_zero_ignored = true;
                            outchar(hextable[val]);
                        }
                        start_bit -= 4;
                    }
                }
            }
            break;
        }
        default:
            outstr("\nprintf-error\n");
            return false;
    }
    return true;
}

int printf(const char *fmt, ...) {
    printf_state state = CHECK_CH;
    va_list args;

    va_start(args, fmt);

    while (*fmt) {
        switch (state) {
            case CHECK_CH: {
                if (*fmt == '%') {
                    state = PARSE_FMT_STR;
                    fmt++;
                    continue;
                }
                outchar(*fmt);
                fmt++;
                break;
            }
            case PARSE_FMT_STR: {
                // Support only basic format specifiers
                while (*fmt && ((*fmt >= '0' && *fmt <= '9') || *fmt == '-')) {
                    fmt++;
                }

                switch (*fmt) {
                    case '%':
                        outchar(*fmt);
                        fmt++;
                        state = CHECK_CH;
                        break;
                    case 'c':
                    case 'C':
                        outchar(va_arg(args, int));
                        fmt++;
                        state = CHECK_CH;
                        break;
                    case 's':
                    case 'S':
                        outstr(va_arg(args, const char *));
                        fmt++;
                        state = CHECK_CH;
                        break;
                    case 'l': {
                        int l_count = 1;
                        fmt++;
                        if (*fmt == 'l') {
                            l_count++;
                            fmt++;
                        }
                        if (printf_numbers(*fmt, &args, l_count)) {
                            state = CHECK_CH;
                            fmt++;
                            break;
                        }
                        return -1;
                    }
                    default: {
                        if (printf_numbers(*fmt, &args, 0)) {
                            state = CHECK_CH;
                            fmt++;
                            break;
                        }
                        return -1;
                    }
                }
            }
        }
    }
    return 0;
}
