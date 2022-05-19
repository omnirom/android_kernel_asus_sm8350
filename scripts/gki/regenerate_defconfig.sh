#!/bin/bash

echo
echo "Regenerate QGKI Defconfig"
echo

export KERN_SRC=$HOME/omni/kernel/asus/sm8350
export ONLY_GKI=0
export ARCH=arm64
export CLANG_TRIPLE=aarch64-linux-gnu-
export CROSS_COMPILE=$HOME/omni/prebuilts/gcc/linux-x86/aarch64/aarch64-linux-android-4.9/bin/aarch64-linux-android-
export HOSTAR=$HOME/omni/prebuilts/clang/host/linux-x86/clang-r416183b1/bin/llvm-ar
export HOSTCC=$HOME/omni/prebuilts/clang/host/linux-x86/clang-r416183b1/bin/clang
export HOSTLD=$HOME/omni/prebuilts/clang/host/linux-x86/clang-r416183b1/bin/ld.lld
export LD=$HOME/omni/prebuilts/clang/host/linux-x86/clang-r416183b1/bin/ld.lld
export REAL_CC=$HOME/omni/prebuilts/clang/host/linux-x86/clang-r416183b1/bin/clang
export TARGET_BUILD_VARIANT=user
export ASUS_BUILD_PROJECT=SAKE

./generate_defconfig.sh lahaina-qgki_defconfig

echo
echo "New Defconfig is Done"
echo
