#
# Copyright (C) 2016 The CyanogenMod Project
# Copyright (C) 2017 The LineageOS Project
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#      http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#

DEVICE_PACKAGE_OVERLAYS += $(LOCAL_PATH)/overlay

PRODUCT_AAPT_CONFIG := normal
PRODUCT_AAPT_PREF_CONFIG := xhdpi

$(call inherit-product, frameworks/native/build/phone-xhdpi-2048-dalvik-heap.mk)

# Audio
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/configs/mixer_paths_mtp.xml:$(TARGET_COPY_OUT_VENDOR)/etc/mixer_paths_mtp.xml

# Camera
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/configs/hdrhax:$(TARGET_COPY_OUT_VENDOR)/etc/hdrhax

# ConfigPanel
PRODUCT_PACKAGES += \
ConfigPanel

# IRQ balance
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/configs/msm_irqbalance.conf:$(TARGET_COPY_OUT_VENDOR)/etc/msm_irqbalance.conf

# Keylayouts
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/keylayout/atmel_mxt_ts_T100_touchscreen.kl:$(TARGET_COPY_OUT_VENDOR)/usr/keylayout/atmel_mxt_ts_T100_touchscreen.kl \
    $(LOCAL_PATH)/keylayout/synaptics_dsx.kl:$(TARGET_COPY_OUT_VENDOR)/usr/keylayout/synaptics_dsx.kl \
    $(LOCAL_PATH)/keylayout/Headset.kl:$(TARGET_COPY_OUT_VENDOR)/usr/keylayout/Headset.kl

# Media
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/configs/media_codecs.xml:$(TARGET_COPY_OUT_VENDOR)/etc/media_codecs.xml \
    $(LOCAL_PATH)/configs/media_codecs_performance.xml:$(TARGET_COPY_OUT_VENDOR)/etc/media_codecs_performance.xml

# Permission
PRODUCT_COPY_FILES += \
    frameworks/native/data/etc/android.hardware.opengles.aep.xml:$(TARGET_COPY_OUT_VENDOR)/etc/permissions/android.hardware.opengles.aep.xml

# Properties
-include $(LOCAL_PATH)/vendor_prop.mk

# Ramdisk
PRODUCT_PACKAGES += \
    init.qcom.power.rc \
    init.target.rc

# Thermal
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/configs/thermal-engine.conf:$(TARGET_COPY_OUT_VENDOR)/etc/thermal-engine.conf
