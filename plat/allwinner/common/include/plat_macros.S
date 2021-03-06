/*
 * Copyright (c) 2017, ARM Limited and Contributors. All rights reserved.
 *
 * SPDX-License-Identifier: BSD-3-Clause
 */

#ifndef __PLAT_MACROS_S__
#define __PLAT_MACROS_S__

#include <arm_macros.S>
#include <sunxi_mmap.h>

	/* ---------------------------------------------
	 * The below required platform porting macro
	 * prints out relevant GIC and CCI registers
	 * whenever an unhandled exception is taken in
	 * BL31.
	 * Clobbers: x0 - x10, x16, x17, sp
	 * ---------------------------------------------
	 */
	.macro plat_crash_print_regs
	mov_imm	x17, SUNXI_GICC_BASE
	mov_imm	x16, SUNXI_GICD_BASE
	arm_print_gic_regs
	.endm

#endif /* __PLAT_MACROS_S__ */
