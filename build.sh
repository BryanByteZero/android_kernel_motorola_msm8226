#!/bin/bash
export ARCH=arm
export SUBARCH=arm
export CROSS_COMPILE=/home/bryan/kernel/TC/arm-eabi-4.9/bin/arm-eabi-
make clean
make falcon_defconfig
make -j3 CONFIG_NO_ERROR_ON_MISMATCH=y
