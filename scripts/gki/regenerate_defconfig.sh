#!/bin/bash

echo
echo "Regenerate Asus QGKI Defconfig"
echo

SOURCE_DIR=$(realpath ../../../../../)
echo $SOURCE_DIR

export KERN_SRC=$SOURCE_DIR/kernel/asus/sm8350
export ONLY_GKI=0
export ARCH=arm64
export CLANG_TRIPLE=aarch64-linux-gnu-
export CROSS_COMPILE=$SOURCE_DIR/prebuilts/gcc/linux-x86/aarch64/aarch64-linux-android-4.9/bin/aarch64-linux-android-
export HOSTAR=$SOURCE_DIR/prebuilts/clang/host/linux-x86/clang-r416183b1/bin/llvm-ar
export HOSTCC=$SOURCE_DIR/prebuilts/clang/host/linux-x86/clang-r416183b1/bin/clang
export HOSTLD=$SOURCE_DIR/prebuilts/clang/host/linux-x86/clang-r416183b1/bin/ld.lld
export LD=$SOURCE_DIR/prebuilts/clang/host/linux-x86/clang-r416183b1/bin/ld.lld
export REAL_CC=$SOURCE_DIR/prebuilts/clang/host/linux-x86/clang-r416183b1/bin/clang
export TARGET_BUILD_VARIANT=user
export ASUS_BUILD_PROJECT=SAKE

./generate_defconfig.sh lahaina-qgki_defconfig

echo
echo "New lahaina-qgki_defconfig is Done"
echo

cat $SOURCE_DIR/kernel/asus/sm8350/arch/arm64/configs/vendor/SAKE-perf_defconfig $SOURCE_DIR/kernel/asus/sm8350/arch/arm64/configs/vendor/lahaina-qgki_defconfig > $SOURCE_DIR/kernel/asus/sm8350/arch/arm64/configs/vendor/zf8_defconfig_temp

echo
echo "New zf8_defconfig_temp is Done"
echo

awk '!seen[$0]++' $SOURCE_DIR/kernel/asus/sm8350/arch/arm64/configs/vendor/zf8_defconfig_temp > $SOURCE_DIR/kernel/asus/sm8350/arch/arm64/configs/vendor/zf8_defconfig

rm $SOURCE_DIR/kernel/asus/sm8350/arch/arm64/configs/vendor/zf8_defconfig_temp

echo
echo "Removed duplicated config from zf8_defconfig"
echo
