/*
# Copyright 2022 Google LLC
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#     https://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
*/
#include "multicore.h"

/**
 * Secondary Cores complete their boot up and jump to secondary core main
 */
void secondary_core_main(unsigned long cpuid) {
    printf("Core %ld Bootup done.\n", cpuid);
}
/**
 * start_core is called quickly after main core completes its boot.
 * start_core wakes up other secondary cores and calls them to specific function address
 */
void start_core(unsigned long cpuid, void (*func)(unsigned long)) {
    printf("Core 0 Starting Core %ld.\n", cpuid);
    unsigned long offset = 8 * (cpuid - 1);
    *(unsigned long *)(((unsigned long)&spin_cpu) + offset) = (unsigned long)func; // Save caller address
    asm volatile("sev"); // Since we put core 1 to sleep with a wfe (Wait For Event) instruction, we use a sev (Set Event) instruction to wake it again.
}
/**
 * Core 0 wakes up the secondary cores by updating a non-zero value at spin address.The non-zero value is the function address
 * where the secondary cores will start executing instruction after booting up.
 */
static int secondary_core_boot(int argc, char **argv) {
    start_core(1, secondary_core_main);
    printf("Core 0 Bootup done.\n"); // Core 0 Completes boot up
    return 0;
}

AUTO_CMD(SecondaryBoot, "Starts Secondary Cores", secondary_core_boot);
