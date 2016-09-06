#!/bin/bash

# ZER0 Byte Build Script

# Exports required stuff
export ARCH=arm
echo 'exporting Arch'
export SUBARCH=arm
echo 'exporting SubArch'
export CROSS_COMPILE=/home/bryan/TC/uber50a7/bin/arm-eabi-
echo 'exporting UBER toolchain'

# Clean Build
echo 'Cleaning build'
make clean && make mrproper

# Let the party start!
echo 'Making config'
make falcon_defconfig
echo 'Compiling Kernel'
make -o2 -j4 CONFIG_NO_ERROR_ON_MISMATCH=y
