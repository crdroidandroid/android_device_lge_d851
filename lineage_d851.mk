#
# Copyright 2014 The CyanogenMod Project
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

PRODUCT_PACKAGE_OVERLAYS += $(LOCAL_PATH)/overlay

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit from d851 device
$(call inherit-product, device/lge/d851/device.mk)

# Inherit some common Lineage stuff.
$(call inherit-product, vendor/lineage/config/common_full_phone.mk)

# Set those variables here to overwrite the inherited values.
PRODUCT_DEVICE := d851
PRODUCT_NAME := lineage_d851
PRODUCT_BRAND := lge
PRODUCT_MODEL := LG-D851
PRODUCT_MANUFACTURER := LGE

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRODUCT_DEVICE="g3" \
    PRODUCT_NAME="g3_tmo_us" \
    PRIVATE_BUILD_DESC="g3_tmo_us-user 6.0 MRA58K 1609517159bca release-keys"

BUILD_FINGERPRINT="lge/g3_tmo_us/g3:6.0/MRA58K/1609517159bca:user/release-keys"

PRODUCT_GMS_CLIENTID_BASE := android-lge
