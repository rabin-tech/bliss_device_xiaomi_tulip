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

# Inherit some common Cherish stuff
$(call inherit-product, vendor/cherish/config/common_full_phone.mk)

# Inherit from tulip device
$(call inherit-product, device/xiaomi/tulip/device.mk)

# Device info
PRODUCT_NAME := cherish_tulip
PRODUCT_DEVICE := tulip
PRODUCT_BRAND := Xiaomi
PRODUCT_MODEL := Redmi Note 6 Pro
PRODUCT_MANUFACTURER := Xiaomi
TARGET_VENDOR_PRODUCT_NAME := tulip

PRODUCT_GMS_CLIENTID_BASE := android-xiaomi

#Official
CHERISH_BUILD_TYPE :=OFFICIAL

# Maintainer
PRODUCT_GENERIC_PROPERTIES += \
    ro.cherish.maintainer=Rabin
    
#Blur
TARGET_USES_BLUR := true

# Bootanimation
TARGET_BOOT_ANIMATION_RES := 1080

# Fingerprint
PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="redfin-user 11 RQ3A.210705.001 7380771 release-keys"

BUILD_FINGERPRINT := google/redfin/redfin:11/RQ3A.210705.001/7380771:user/release-keys