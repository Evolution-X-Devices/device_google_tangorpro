#
# Copyright (C) 2023 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit some common Evolution X stuff.
TARGET_DISABLE_EPPE := true
$(call inherit-product, vendor/evolution/config/common_full_tablet_wifionly.mk)

TARGET_IS_PIXEL := true
TARGET_IS_PIXEL_TABLET := true
TARGET_BOOT_ANIMATION_RES := 1080
TARGET_SUPPORTS_QUICK_TAP := true

# Inherit device configuration
$(call inherit-product, device/google/tangorpro/aosp_tangorpro.mk)
$(call inherit-product, device/google/gs201/evolution_common.mk)
$(call inherit-product, device/google/tangorpro/device-evolution.mk)

# Device identifier. This must come after all inclusions
PRODUCT_BRAND := google
PRODUCT_MODEL := Pixel Tablet
PRODUCT_NAME := evolution_tangorpro

PRODUCT_BUILD_PROP_OVERRIDES += \
    TARGET_PRODUCT=tangorpro \
    PRIVATE_BUILD_DESC="tangorpro-user 14 AP1A.240305.019.A1 11445699 release-keys"

BUILD_FINGERPRINT := google/tangorpro/tangorpro:14/AP1A.240305.019.A1/11445699:user/release-keys

$(call inherit-product, vendor/google/tangorpro/tangorpro-vendor.mk)
