# Boot animation
TARGET_SCREEN_HEIGHT := 1280
TARGET_SCREEN_WIDTH := 720
TARGET_BOOTANIMATION_HALF_RES := true

# Inherit some common Lineage stuff
$(call inherit-product, vendor/lineage/config/common_full_phone.mk)

# Inherit device configuration
$(call inherit-product, device/zte/p839f30/full_p839f30.mk)

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/product_launched_with_l.mk)

PRODUCT_RELEASE_NAME := Blade S6
PRODUCT_NAME := lineage_p839f30

# Set product device & name
PRODUCT_BUILD_PROP_OVERRIDES += \
   TARGET_DEVICE=Blade-S6 PRODUCT_NAME=Blade-S6

PRODUCT_BUILD_PROP_OVERRIDES += \
    BUILD_FINGERPRINT=ZTE/Blade-S6/P839F30:5.0.2/LRX22G/eng.zte.20150508.150143:user/release-keys \
    PRIVATE_BUILD_DESC="msm8916_32-user 5.0.2 LRX22G eng.zte.20150508.150143 release-keys"

PRODUCT_GMS_CLIENTID_BASE := android-zte

# Vendor security patch level
PRODUCT_PROPERTY_OVERRIDES += \
    ro.lineage.build.vendor_security_patch=2015-05-08
