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

-include device/zte/msm8916-common/BoardConfigCommon.mk

# Platform
TARGET_BOARD_PLATFORM_GPU := qcom-adreno405

# Kernel
TARGET_KERNEL_SOURCE := kernel/zte/msm8939
TARGET_KERNEL_CONFIG := p839f30_defconfig

# Assert
TARGET_OTA_ASSERT_DEVICE := p839f30,P839F30,Blade-S6

# Bluetooth
BOARD_BLUETOOTH_BDROID_BUILDCFG_INCLUDE_DIR := device/zte/p839f30/bluetooth

# CMHW
BOARD_HARDWARE_CLASS += device/zte/p839f30/cmhw/src
TARGET_TAP_TO_WAKE_NODE := "/sys/syna_wake_gesture/wake_gesture"

# Filesystem
BOARD_USERDATAIMAGE_PARTITION_SIZE := 4294950912 # (BOARD_USERDATAIMAGE_PARTITION_SIZE - 16384 for crypto footer)

# Properties
TARGET_SYSTEM_PROP += device/zte/p839f30/system.prop

# SELinux
BOARD_SEPOLICY_DIRS += device/zte/p839f30/sepolicy

# Inherit from the proprietary version
-include vendor/zte/p839f30/BoardConfigVendor.mk
