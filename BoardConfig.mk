#
# Copyright 2016 The Android Open-Source Project
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

DEVICE_PATH := device/asus/T00F

# inherit from common ctp-common
-include $(VENDOR_PATH)/BoardConfigCommon.mk

# Specific headers
TARGET_BOARD_KERNEL_HEADERS := $(DEVICE_PATH)/kernel-headers
TARGET_SPECIFIC_HEADER_PATH += $(DEVICE_PATH)/include

TARGET_RELEASETOOLS_EXTENSIONS := $(DEVICE_PATH)

# Use the non-open-source parts, if they're present
-include vendor/asus/T00F/BoardConfigVendor.mk

# Partitions
BOARD_CACHEIMAGE_FILE_SYSTEM_TYPE := ext4
BOARD_USERDATAIMAGE_PARTITION_SIZE := 5277466624 ##5277483008 - 16384 // 5033MB
BOARD_CACHEIMAGE_PARTITION_SIZE := 519045120 # // 495MB
BOARD_SYSTEMIMAGE_PARTITION_SIZE := 1320157184 # // 1259MB
BOARD_FLASH_BLOCK_SIZE := 131072
