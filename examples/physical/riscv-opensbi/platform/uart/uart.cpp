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

#include "uart.hpp"
#include <stdint.h>
#include <stdio.h>

#define SBI_ECALL(__eid, __a0)                              \
  ({                                                                           \
    register unsigned long a0 asm("a0") = (unsigned long)(__a0);               \
    register unsigned long a7 asm("a7") = (unsigned long)(__eid);              \
    asm volatile("ecall"                                                       \
                 : "+r"(a0)                                                    \
                 : "r"(a7)                                                     \
                 : "memory");                                                  \
    a0;                                                                        \
  })

void putc(char c) { 
  SBI_ECALL(SBI_EXT_0_1_CONSOLE_PUTCHAR, (c)); 
}

int getc(void) { 
  return SBI_ECALL(SBI_EXT_0_1_CONSOLE_GETCHAR, 0);
}

void uart_init(void) { 
  /* The default config works! */
}
