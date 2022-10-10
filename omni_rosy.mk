#
# Copyright (C) 2022 The Android Open Source Project
# Copyright (C) 2022 SebaUbuntu's TWRP device tree generator
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit some common Omni stuff.
$(call inherit-product, vendor/omni/config/common.mk)

# Inherit from rosy device
$(call inherit-product, device/xiaomi/rosy/device.mk)

PRODUCT_DEVICE := rosy
PRODUCT_NAME := omni_rosy
PRODUCT_BRAND := Xiaomi
PRODUCT_MODEL := Redmi 5
PRODUCT_MANUFACTURER := xiaomi

PRODUCT_GMS_CLIENTID_BASE := android-xiaomi

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="rosy-user 8.1.0 OPM1.171019.026 V11.0.2.0.ODAMIXM release-keys"

BUILD_FINGERPRINT := Xiaomi/rosy/rosy:8.1.0/OPM1.171019.026/V11.0.2.0.ODAMIXM:user/release-keys
