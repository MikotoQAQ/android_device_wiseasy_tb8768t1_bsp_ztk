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

# Inherit from tb8768t1_bsp_ztk device
$(call inherit-product, device/wiseasy/tb8768t1_bsp_ztk/device.mk)

PRODUCT_DEVICE := tb8768t1_bsp_ztk
PRODUCT_NAME := omni_tb8768t1_bsp_ztk
PRODUCT_BRAND := Wiseasy
PRODUCT_MODEL := T2
PRODUCT_MANUFACTURER := wiseasy

PRODUCT_GMS_CLIENTID_BASE := android-wiseasy

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="full_tb8768t1_bsp_ztk-userdebug 12 SP1A.210812.016 46 test-keys"

BUILD_FINGERPRINT := Wiseasy/full_tb8768t1_bsp_ztk/tb8768t1_bsp_ztk:12/SP1A.210812.016/46:userdebug/test-keys
