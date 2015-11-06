# Boot animation
TARGET_SCREEN_HEIGHT := 1280
TARGET_SCREEN_WIDTH := 720

# Inherit some common CM stuff
$(call inherit-product, vendor/cm/config/common_full_phone.mk)

# Inherit device configuration
$(call inherit-product, device/zte/p839f30/full_p839f30.mk)

PRODUCT_RELEASE_NAME := Blade S6
PRODUCT_NAME := cm_p839f30

# Set product name
PRODUCT_BUILD_PROP_OVERRIDES += \
    PRODUCT_NAME=Blade-S6

PRODUCT_BUILD_PROP_OVERRIDES += \
    BUILD_FINGERPRINT=ZTE/Blade-S6/P839F30:5.0.2/LRX22G/eng.zte.20150508.150143:user/release-keys \
    PRIVATE_BUILD_DESC="msm8916_32-user 5.0.2 LRX22G eng.zte.20150508.150143 release-keys"

PRODUCT_GMS_CLIENTID_BASE := android-zte
