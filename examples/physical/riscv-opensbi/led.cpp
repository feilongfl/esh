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

/*
 * This is a mandatory include.
 * This has the ADD_CMD() macro
 */
#include "shell.h"

// initial GPIO: PD18 as output
// 0x02000000: GPIO controller base address
#define GPIO_BASE 0x02000000
#define PORTD_OFFSET 0x0090
#define GPIO_PIN 18

struct sunxi_gpio {
  unsigned int cfg[4];
  unsigned int dat;
  unsigned int drv[2];
  unsigned int pull[2];
};

struct sunxi_gpio *PortD = (struct sunxi_gpio *)(GPIO_BASE + PORTD_OFFSET);

void led_init() {
  PortD->cfg[(GPIO_PIN) / 8] &= (~0x0F << (GPIO_PIN % 8) * 4);
  PortD->cfg[(GPIO_PIN) / 8] |= (0x01 << (GPIO_PIN % 8) * 4);
  PortD->dat |= (0x01 << 18);
}

void led_set(int led_id, int status) {
  if (status == 0) {
    PortD->dat &= ~(0x01 << GPIO_PIN);
  } else {
    PortD->dat |= (0x01 << GPIO_PIN);
  }
}

/*
 * There can be one or many function with same prototype, exposed as
 * a command on the shell. They can be in same or multiple files.
 */
int led(int argc, char **argv) {
  if (argc == 3) {
    led_init();
    led_set(atoi(argv[1]), atoi(argv[2]));
  }

  return 0;
}

/*

 * One or many such can exist per file.
 * Description: ADD_CMD(command, help string, function to be exposed)
 */
ADD_CMD(led, "Set Led Status\n\tusage: led <led_id> <status: 0/1>", led);
