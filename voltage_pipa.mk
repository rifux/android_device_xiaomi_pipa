#
# Copyright (C) 2021 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Release name
PRODUCT_RELEASE_NAME := pipa

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base.mk)
$(call inherit-product, device/xiaomi/pipa/voltage/product_launched_with_t.mk)

# Inherit from pipa device
$(call inherit-product, device/xiaomi/pipa/device.mk)

# Inherit VoltageOS configurations
$(call inherit-product, vendor/voltage/config/common_full_tablet_wifionly.mk)
TARGET_SUPPORTS_QUICK_TAP := true
TARGET_DOESNT_LIKE_FLIPENDO := true
TARGET_ENABLE_BLUR := true

# Inherit extras
# <placeholder>

# Official-ify
VOLTAGE_BUILD_TYPE := UNOFFICIAL

# UDFPS animations
EXTRA_UDFPS_ANIMATIONS := false

# Bootanimation Resolution
TARGET_BOOT_ANIMATION_RES := 3200

# Device info
PRODUCT_DEVICE := pipa
PRODUCT_NAME := voltage_pipa
PRODUCT_BRAND := Xiaomi
PRODUCT_MODEL := Xiaomi Pad 6
PRODUCT_MANUFACTURER := Xiaomi
PRODUCT_CHARACTERISTICS := tablet
PRODUCT_SYSTEM_NAME := pipa_global
PRODUCT_SYSTEM_DEVICE := pipa

BUILD_FINGERPRINT := Xiaomi/pipa_global/pipa:13/TKQ1.221114.001/V14.0.8.0.TMZMIXM:user/release-keys

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="pipa-user 13 TKQ1.221114.001 V14.0.8.0.TMZMIXM:user release-keys" \
    TARGET_DEVICE=$(PRODUCT_SYSTEM_DEVICE) \
    TARGET_PRODUCT=$(PRODUCT_SYSTEM_NAME)

PRODUCT_PROPERTY_OVERRIDES += \
    ro.build.fingerprint=$(BUILD_FINGERPRINT)

PRODUCT_GMS_CLIENTID_BASE := android-xiaomi