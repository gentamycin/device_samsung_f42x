#
# Copyright (C) 2024 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit some common Lineage stuff.
$(call inherit-product, vendor/lineage/config/common_full_phone.mk)

# Inherit from f42x device
$(call inherit-product, device/samsung/f42x/device.mk)

PRODUCT_DEVICE := f42x
PRODUCT_NAME := lineage_f42x
PRODUCT_BRAND := samsung
PRODUCT_MODEL := SM-E426B
PRODUCT_MANUFACTURER := samsung

PRODUCT_GMS_CLIENTID_BASE := android-samsung-ss

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="f42xdd-user 13 TP1A.220624.014 E426BXXS6DXD1 release-keys"

BUILD_FINGERPRINT := samsung/f42xdd/f42x:13/TP1A.220624.014/E426BXXS6DXD1:user/release-keys
