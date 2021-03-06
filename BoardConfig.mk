#
# Copyright (C) 2015 The CyanogenMod Project
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

#
# This file sets variables that control the way modules are built
# thorughout the system. It should not be used to conditionally
# disable makefiles (the proper mechanism to control what gets
# included in a build is to use PRODUCT_PACKAGES in a product
# definition file).
#

# WARNING: This line must come *before* including the proprietary
# variant, so that it gets overwritten by the parent (which goes
# against the traditional rules of inheritance).

# Inherit from common a5-common
-include device/htc/a5-common/BoardConfigCommon.mk

# Assert
TARGET_OTA_ASSERT_DEVICE := htc_a5,htc_a5tl,htc_a5chl,htc_a5ul,a5,a5tl,a5chl,a5ul

# Audio
AUDIO_FEATURE_DISABLED_MULTI_VOICE_SESSIONS := true

# Releasetools
TARGET_RELEASETOOLS_EXTENSIONS := device/htc/a5ul/releasetools

# RIL
BOARD_RIL_CLASS := ../../../device/htc/a5ul/ril

# Vendor Init
TARGET_UNIFIED_DEVICE := true
TARGET_INIT_VENDOR_LIB := libinit_msm
TARGET_LIBINIT_DEFINES_FILE := device/htc/a5ul/init/init_a5ul.cpp

# Inherit from the proprietary version
-include vendor/htc/a5ul/BoardConfigVendor.mk
