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

void flush_icache(void) {
  asm volatile("fence.i");
}

extern "C" {
  unsigned int fdt_load_addr;
};

/*
 * There can be one or many function with same prototype, exposed as
 * a command on the shell. They can be in same or multiple files.
 */
int boot(int argc, char **argv) {
  if (argc == 2) {
    void (*jump)(unsigned int) = (void (*)(unsigned int))(size_t)atoh(argv[1]);
    printf("Boot to  : 0x%x\n\n", jump);
    printf("Boot args: 0x%x\n\n", (fdt_load_addr));
    printf("===================\n\n");

    flush_icache();
    jump(fdt_load_addr);

    printf("===================\n\n");
    printf("Back from program: 0x%x\n\n", jump);
  } else {
    printf("Usage: boot <Address> (in hex)");
  }

  printf("\n");
  return 0;
}

/*

 * One or many such can exist per file.
 * Description: ADD_CMD(command, help string, function to be exposed)
 */
ADD_CMD(boot, "Jump to Address\n\tusage: boot <Address> (in hex)", boot);
