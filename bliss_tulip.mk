#
# Copyright (C) 2018-2019 The LineageOS Project
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

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/product_launched_with_o_mr1.mk)
$(call inherit-product, vendor/miuicamera/common/common-vendor.mk)

# Inherit some common bliss stuff
$(call inherit-product, vendor/bliss/config/common_full_phone.mk)
ifneq ($(WITH_GMS),true)
USE_LAWNCHAIR := true
endif

# Inherit from tulip device
$(call inherit-product, device/xiaomi/tulip/device.mk)

# Device info
PRODUCT_NAME := bliss_tulip
PRODUCT_DEVICE := tulip
PRODUCT_BRAND := Xiaomi
PRODUCT_MODEL := Redmi Note 6 Pro
PRODUCT_MANUFACTURER := Xiaomi
TARGET_VENDOR_PRODUCT_NAME := tulip

PRODUCT_GMS_CLIENTID_BASE := android-xiaomi

    
#Blur
TARGET_USES_BLUR := true

# Bootanimation
TARGET_BOOT_ANIMATION_RES := 1080

# Fingerprint
PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="redfin-user 11 RQ3A.210805.001.A1 7474174 release-keys"

BUILD_FINGERPRINT := google/redfin/redfin:11/RQ3A.210805.001.A1/7474174:user/release-keys
