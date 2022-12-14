#
# Copyright (C) 2022 The Android Open Source Project
# Copyright (C) 2022 SebaUbuntu's TWRP device tree generator
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit some common twrp stuff.
$(call inherit-product, vendor/twrp/config/common.mk)

# Inherit from markw device
$(call inherit-product, device/xiaomi/markw/device.mk)

PRODUCT_DEVICE := markw
PRODUCT_NAME := twrp_markw
PRODUCT_BRAND := Xiaomi
PRODUCT_MODEL := Redmi 4
PRODUCT_MANUFACTURER := xiaomi

PRODUCT_GMS_CLIENTID_BASE := android-xiaomi

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="markw-user 6.0.1 MMB29M V10.2.2.0.MBECNXM release-keys"

BUILD_FINGERPRINT := Xiaomi/markw/markw:6.0.1/MMB29M/V10.2.2.0.MBECNXM:user/release-keys
