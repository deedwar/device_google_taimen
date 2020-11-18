# Boot animation
TARGET_SCREEN_HEIGHT := 2880
TARGET_SCREEN_WIDTH := 1440

# Inherit some common Lineage stuff.
$(call inherit-product, vendor/gzosp/config/common_full_phone.mk)

# Inherit device configuration
$(call inherit-product, device/google/taimen/aosp_taimen.mk)

## Device identifier. This must come after all inclusions
PRODUCT_NAME := gzosp_taimen
PRODUCT_BRAND := google
PRODUCT_MODEL := Pixel 2 XL
PRODUCT_RESTRICT_VENDOR_FILES := false

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRODUCT_NAME=taimen \
    PRIVATE_BUILD_DESC="taimen-user 11 RP1A.201005.004 6782484 release-keys"

BUILD_FINGERPRINT := google/taimen/taimen:11/RP1A.201005.004/6782484:user/release-keys

$(call inherit-product-if-exists, vendor/google/taimen/taimen-vendor.mk)
$(call inherit-product-if-exists, vendor/gapps/common/common-vendor.mk)
