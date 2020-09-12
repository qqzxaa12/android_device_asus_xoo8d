#
# Copyright (C) 2018 The TwrpBuilder Open-Source Project
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


$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base.mk)


$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)


$(call inherit-product, $(SRC_TARGET_DIR)/product/embedded.mk)

$(call inherit-product, vendor/omni/config/common.mk)


PRODUCT_COPY_FILES += device/asus/ASUS_X008/prebuilt/zImage:kernel


PRODUCT_DEVICE := ASUS_X008
PRODUCT_NAME := omni_WW_Phone
PRODUCT_BRAND := asus
PRODUCT_MODEL := ASUS_X008D
PRODUCT_MANUFACTURER := ASUS

PRODUCT_DEFAULT_PROPERTY_OVERRIDES += \
    persist.sys.usb.config=mtp

PRODUCT_BUILD_PROP_OVERRIDES += \
    BUILD_FINGERPRINT="asus/WW_Phone/ASUS_X008:8.1.0/O11019/-15.01.1810.262-20181105:user/release-keys" \
    PRIVATE_BUILD_DESC="full_E281L-user 8.1.0 O11019 1541406117 release-keys"
