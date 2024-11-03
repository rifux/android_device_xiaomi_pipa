#!/usr/bin/bash

#
# Copyright (C) 2024 Vladimir `rifux` Blinkov
#
# SPDX-License-Identifier: Apache-2.0
#

# Vendor
echo 'Cloning Vendor Tree...'
git clone -b lmou https://github.com/ai94iq/proprietary_vendor_xiaomi_pipa vendor/xiaomi/pipa
git clone -b lmou https://github.com/ai94iq/proprietary_vendor_xiaomi_sm8250-common vendor/xiaomi/sm8250-common

# Device
echo 'Cloning Device Tree...'
git clone -b fourteen/voltage https://github.com/rifux/android_device_xiaomi_sm8250-common device/xiaomi/sm8250-common

# Kernel
echo 'Cloning Kernel Tree...'
git clone -b lineage-21 https://github.com/rifux/android_kernel_xiaomi_sm8250 kernel/xiaomi/sm8250

# Hardware
echo 'Cloning hardware/xiaomi...'
git clone -b lineage-21 https://github.com/LineageOS/android_hardware_xiaomi hardware/xiaomi

# KernelSU
echo 'Fetching kernel/xiaomi/sm8550/KernelSU'
cd kernel/xiaomi/sm8550
git submodule init && git submodule update KernelSU
cd ../../..