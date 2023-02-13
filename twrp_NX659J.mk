#
# Copyright (C) 2019 The TwrpBuilder Open-Source Project
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
# http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#

# Release name
PRODUCT_RELEASE_NAME := NX659J
DEVICE_PATH := device/nubia/NX659J

$(call inherit-product, $(SRC_TARGET_DIR)/product/core_minimal.mk)

# Inherit from our custom product configuration
#$(call inherit-product, vendor/twrp/config/common.mk)

# Inherit from hardware-specific part of the product configuration
$(call inherit-product, $(DEVICE_PATH)/device.mk)

## Device identifier. This must come after all inclusions
PRODUCT_DEVICE := NX659J
PRODUCT_NAME := twrp_NX659J
PRODUCT_BRAND := Redmagic
PRODUCT_MODEL := Redmagic 5G
PRODUCT_MANUFACTURER := Nubia

