# SPDX-License-Identifier: GPL-2.0
subdir-n += actions
subdir-n += al
subdir-n += allwinner
subdir-n += altera
subdir-n += amd
subdir-n += amlogic
subdir-n += apm
subdir-n += arm
subdir-n += bitmain
subdir-n += broadcom
subdir-n += cavium
subdir-n += exynos
subdir-n += freescale
subdir-n += hisilicon
subdir-n += intel
subdir-n += lg
subdir-n += marvell
subdir-n += mediatek
subdir-n += nvidia
subdir-n += qcom
subdir-n += realtek
subdir-n += renesas
subdir-n += rockchip
subdir-n += socionext
subdir-n += sprd
subdir-n += synaptics
subdir-n += ti
subdir-n += xilinx
subdir-n += zte

dtstree	:= $(srctree)/$(src)
vendor  := $(dtstree)/vendor
ifneq "$(wildcard $(vendor)/Makefile)" ""
    subdir-y += vendor
endif
