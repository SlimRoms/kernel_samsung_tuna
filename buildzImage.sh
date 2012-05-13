#!/bin/bash
cp ./arch/arm/configs/tuna_defconfig ./tuna_defconfig
make mrproper
make tuna_defconfig
make -j4
cp ./arch/arm/boot/zImage ~/android/aosp_jb/out/target/product/maguro/kernel
rm tuna_defconfig
