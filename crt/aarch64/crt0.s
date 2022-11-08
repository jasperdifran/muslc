/* Found in AOS starter code in `aos-base/projects/sel4runtime/crt/sel4_arch/aarch64/ */

/*
 * Copyright 2019, Data61, CSIRO (ABN 41 687 119 230)
 *
 * SPDX-License-Identifier: BSD-2-Clause
 */
.section .text
.global _start
_start:
	mov fp, #0
	mov lr, #0

	mov x0, sp
	bl __sel4_start_c

	/* should not return */
1:
	b 1b

