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

/*
 * There can be one or many function with same prototype, exposed as
 * a command on the shell. They can be in same or multiple files.
 */
int read_byte(int argc, char **argv) {
  if (argc == 2) {
    uint8_t *addr = (uint8_t *)(size_t)atoh(argv[1]);
    printf("Read byte at: 0x%x = 0x%x", addr, *addr);
  } else {
    printf("Usage: rb <Address> (in hex)");
  }

  printf("\n");
  return 0;
}

/*

 * One or many such can exist per file.
 * Description: ADD_CMD(command, help string, function to be exposed)
 */
ADD_CMD(rby, "read byte\n\tusage: rb <Address> (in hex)", read_byte);
