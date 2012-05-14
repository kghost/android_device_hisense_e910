# Inherit from those products. Most specific first.
#$(call inherit-product, $(SRC_TARGET_DIR)/product/languages_full.mk)
PRODUCT_LOCALES := en_US
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

PRODUCT_LOCALES += hdpi

# Inherit some common cyanogenmod stuff.
$(call inherit-product, vendor/cm/config/common_mini_phone.mk)

# Include CDMA stuff
$(call inherit-product, vendor/cm/config/cdma.mk)

$(call inherit-product, device/hisense/e910/device_e910.mk)

#
# Setup device specific product configuration.
#
PRODUCT_NAME := cm_e910
PRODUCT_BRAND := google
PRODUCT_DEVICE := e910
PRODUCT_CODENAME := e910
PRODUCT_MODEL := Hisense E910
PRODUCT_MANUFACTURER := Hisense
PRODUCT_BUILD_PROP_OVERRIDES += PRODUCT_NAME=mysid BUILD_FINGERPRINT="google/mysid/e910:4.0.4/IMM76K/336647:user/release-keys" PRIVATE_BUILD_DESC="mysid-user 4.0.4 IMM76K 336647 release-keys"
PRIVATE_BUILD_DESC="bravo-user 4.0.3 IML74K 189904 release-keys"

# Get some Gapps
$(call inherit-product-if-exists, gapps/gapps.mk)
