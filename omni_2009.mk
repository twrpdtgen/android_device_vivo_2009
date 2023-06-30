#
# Copyright (C) 2023 The Android Open Source Project
# Copyright (C) 2023 SebaUbuntu's TWRP device tree generator
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit some common Omni stuff.
$(call inherit-product, vendor/omni/config/common.mk)

# Inherit from 2009 device
$(call inherit-product, device/vivo/2009/device.mk)

PRODUCT_DEVICE := 2009
PRODUCT_NAME := omni_2009
PRODUCT_BRAND := iQOO
PRODUCT_MODEL := I2009
PRODUCT_MANUFACTURER := vivo

PRODUCT_GMS_CLIENTID_BASE := android-vivo

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="qssi-user 12 SP1A.210812.003 compiler10201040 release-keys"

BUILD_FINGERPRINT := iQOO/2009i/2009:12/SP1A.210812.003/compiler10201040:user/release-keys
