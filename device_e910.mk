#
# Copyright (C) 2008 The Android Open Source Project
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
$(call inherit-product, $(SRC_TARGET_DIR)/product/small_base.mk)

# The gps config appropriate for this device
$(call inherit-product, device/common/gps/gps_eu.mk)

DEVICE_PACKAGE_OVERLAYS := device/hisense/e910/overlay

PRODUCT_PACKAGES += \
    libOmxCore \
    gralloc.msm7k \
    libRS \
    librs_jni \
    hwprops \
    rzscontrol \

# vold config
PRODUCT_COPY_FILES += \
    device/hisense/e910/vold.fstab:system/etc/vold.fstab

# Modules
PRODUCT_COPY_FILES += \
    device/hisense/e910/prebuilt/modules/ansi_cprng.ko:system/lib/modules/ansi_cprng.ko \
    device/hisense/e910/prebuilt/modules/dal_remotetest.ko:system/lib/modules/dal_remotetest.ko \
    device/hisense/e910/prebuilt/modules/evbug.ko:system/lib/modules/evbug.ko \
    device/hisense/e910/prebuilt/modules/gspca_main.ko:system/lib/modules/gspca_main.ko \
    device/hisense/e910/prebuilt/modules/lcd.ko:system/lib/modules/lcd.ko \
    device/hisense/e910/prebuilt/modules/librasdioif.ko:system/lib/modules/librasdioif.ko \
    device/hisense/e910/prebuilt/modules/max2165.ko:system/lib/modules/max2165.ko \
    device/hisense/e910/prebuilt/modules/mc44s803.ko:system/lib/modules/mc44s803.ko \
    device/hisense/e910/prebuilt/modules/mmc_test.ko:system/lib/modules/mmc_test.ko \
    device/hisense/e910/prebuilt/modules/mt2060.ko:system/lib/modules/mt2060.ko \
    device/hisense/e910/prebuilt/modules/mt20xx.ko:system/lib/modules/mt20xx.ko \
    device/hisense/e910/prebuilt/modules/mt2131.ko:system/lib/modules/mt2131.ko \
    device/hisense/e910/prebuilt/modules/mt2266.ko:system/lib/modules/mt2266.ko \
    device/hisense/e910/prebuilt/modules/mtd_erasepart.ko:system/lib/modules/mtd_erasepart.ko \
    device/hisense/e910/prebuilt/modules/mtd_nandecctest.ko:system/lib/modules/mtd_nandecctest.ko \
    device/hisense/e910/prebuilt/modules/mtd_oobtest.ko:system/lib/modules/mtd_oobtest.ko \
    device/hisense/e910/prebuilt/modules/mtd_pagetest.ko:system/lib/modules/mtd_pagetest.ko \
    device/hisense/e910/prebuilt/modules/mtd_readtest.ko:system/lib/modules/mtd_readtest.ko \
    device/hisense/e910/prebuilt/modules/mtd_speedtest.ko:system/lib/modules/mtd_speedtest.ko \
    device/hisense/e910/prebuilt/modules/mtd_stresstest.ko:system/lib/modules/mtd_stresstest.ko \
    device/hisense/e910/prebuilt/modules/mtd_subpagetest.ko:system/lib/modules/mtd_subpagetest.ko \
    device/hisense/e910/prebuilt/modules/mtd_torturetest.ko:system/lib/modules/mtd_torturetest.ko \
    device/hisense/e910/prebuilt/modules/mxl5005s.ko:system/lib/modules/mxl5005s.ko \
    device/hisense/e910/prebuilt/modules/mxl5007t.ko:system/lib/modules/mxl5007t.ko \
    device/hisense/e910/prebuilt/modules/oprofile.ko:system/lib/modules/oprofile.ko \
    device/hisense/e910/prebuilt/modules/qt1010.ko:system/lib/modules/qt1010.ko \
    device/hisense/e910/prebuilt/modules/scsi_wait_scan.ko:system/lib/modules/scsi_wait_scan.ko \
    device/hisense/e910/prebuilt/modules/tda18218.ko:system/lib/modules/tda18218.ko \
    device/hisense/e910/prebuilt/modules/tda18271.ko:system/lib/modules/tda18271.ko \
    device/hisense/e910/prebuilt/modules/tda827x.ko:system/lib/modules/tda827x.ko \
    device/hisense/e910/prebuilt/modules/tda8290.ko:system/lib/modules/tda8290.ko \
    device/hisense/e910/prebuilt/modules/tda9887.ko:system/lib/modules/tda9887.ko \
    device/hisense/e910/prebuilt/modules/tea5761.ko:system/lib/modules/tea5761.ko \
    device/hisense/e910/prebuilt/modules/tea5767.ko:system/lib/modules/tea5767.ko \
    device/hisense/e910/prebuilt/modules/tuner-simple.ko:system/lib/modules/tuner-simple.ko \
    device/hisense/e910/prebuilt/modules/tuner-types.ko:system/lib/modules/tuner-types.ko \
    device/hisense/e910/prebuilt/modules/tuner-xc2028.ko:system/lib/modules/tuner-xc2028.ko \
    device/hisense/e910/prebuilt/modules/xc5000.ko:system/lib/modules/xc5000.ko

# DHCP config for wifi
PRODUCT_COPY_FILES += \
    device/hisense/e910/prebuilt/dhcpcd.conf:system/etc/dhcpcd/dhcpcd.conf \
    device/hisense/e910/prebuilt/wifi/ar6000.ko:system/wifi/ar6000.ko \
    device/hisense/e910/prebuilt/wifi/softmac:system/wifi/softmac \
    device/hisense/e910/prebuilt/wifi/load_tcmd.sh:system/wifi/load_tcmd.sh \
    device/hisense/e910/prebuilt/wifi/ath6k/AR6003/hw2.0/athtcmd_ram.bin:system/wifi/ath6k/AR6003/hw2.0/athtcmd_ram.bin \
    device/hisense/e910/prebuilt/wifi/ath6k/AR6003/hw2.0/bdata.SD31.bin:system/wifi/ath6k/AR6003/hw2.0/bdata.SD31.bin \
    device/hisense/e910/prebuilt/wifi/ath6k/AR6003/hw2.0/device.bin:system/wifi/ath6k/AR6003/hw2.0/device.bin \
    device/hisense/e910/prebuilt/wifi/ath6k/AR6003/hw2.0/data.patch.hw2_0.bin:system/wifi/ath6k/AR6003/hw2.0/data.patch.hw2_0.bin \
    device/hisense/e910/prebuilt/wifi/ath6k/AR6003/hw2.0/athwlan.bin.z77:system/wifi/ath6k/AR6003/hw2.0/athwlan.bin.z77 \
    device/hisense/e910/prebuilt/wifi/ath6k/AR6003/hw2.0/otp.bin.z77:system/wifi/ath6k/AR6003/hw2.0/otp.bin.z77 \
    device/hisense/e910/prebuilt/wifi/ath6k/AR6003/hw2.1.1/athtcmd_ram.bin:system/wifi/ath6k/AR6003/hw2.1.1/athtcmd_ram.bin \
    device/hisense/e910/prebuilt/wifi/ath6k/AR6003/hw2.1.1/athwlan_tablet.bin:system/wifi/ath6k/AR6003/hw2.1.1/athwlan_tablet.bin \
    device/hisense/e910/prebuilt/wifi/ath6k/AR6003/hw2.1.1/bdata.SD31.bin:system/wifi/ath6k/AR6003/hw2.1.1/bdata.SD31.bin \
    device/hisense/e910/prebuilt/wifi/ath6k/AR6003/hw2.1.1/device.bin:system/wifi/ath6k/AR6003/hw2.1.1/device.bin \
    device/hisense/e910/prebuilt/wifi/ath6k/AR6003/hw2.1.1/athwlan_mobile.bin:system/wifi/ath6k/AR6003/hw2.1.1/athwlan_mobile.bin \
    device/hisense/e910/prebuilt/wifi/ath6k/AR6003/hw2.1.1/data.patch.hw3_0.bin:system/wifi/ath6k/AR6003/hw2.1.1/data.patch.hw3_0.bin \
    device/hisense/e910/prebuilt/wifi/ath6k/AR6003/hw2.1.1/otp.bin:system/wifi/ath6k/AR6003/hw2.1.1/otp.bin \
    device/hisense/e910/prebuilt/wifi/ath6k/AR6003/hw2.1.1/athwlan.bin:system/wifi/ath6k/AR6003/hw2.1.1/athwlan.bin \
    device/hisense/e910/prebuilt/wifi/ath6k/AR6003/hw2.1.1/athwlan_router.bin:system/wifi/ath6k/AR6003/hw2.1.1/athwlan_router.bin

PRODUCT_COPY_FILES += \
    device/hisense/e910/ueventd.qcom.rc:root/ueventd.qcom.rc

# Install the features available on this device.
PRODUCT_COPY_FILES += \
    frameworks/base/data/etc/handheld_core_hardware.xml:system/etc/permissions/handheld_core_hardware.xml \
    frameworks/base/data/etc/android.hardware.camera.autofocus.xml:system/etc/permissions/android.hardware.camera.autofocus.xml \
    frameworks/base/data/etc/android.hardware.telephony.gsm.xml:system/etc/permissions/android.hardware.telephony.gsm.xml \
    frameworks/base/data/etc/android.hardware.location.gps.xml:system/etc/permissions/android.hardware.location.gps.xml \
    frameworks/base/data/etc/android.hardware.wifi.xml:system/etc/permissions/android.hardware.wifi.xml \
    frameworks/base/data/etc/android.hardware.sensor.accelerometer.xml:system/etc/permissions/android.hardware.sensor.accelerometer.xml \
    frameworks/base/data/etc/android.hardware.touchscreen.xml:system/etc/permissions/android.hardware.touchscreen.xml

PRODUCT_PROPERTY_OVERRIDES := \
    keyguard.no_require_sim=true \
    ro.com.android.dateformat=dd-MM-yyyy \
    ro.ril.hsxpa=1 \
    ro.ril.gprsclass=10 \
    ro.media.dec.jpeg.memcap=10000000

PRODUCT_PROPERTY_OVERRIDES += \
    rild.libpath=/system/lib/libril-qc-1.so \
    rild.libargs=-d /dev/smd0 \
    ro.com.android.dataroaming=true \
    ring.delay=0 \
    ro.telephony.call_ring.delay=0 \
    ro.telephony.call_ring.multiple=false

PRODUCT_PROPERTY_OVERRIDES += \
    ro.compcache.default=18

# Time between scans in seconds. Keep it high to minimize battery drain.
# This only affects the case in which there are remembered access points,
# but none are in range.
PRODUCT_PROPERTY_OVERRIDES += \
    wifi.supplicant_scan_interval=15

# density in DPI of the LCD of this board. This is used to scale the UI
# appropriately. If this property is not defined, the default value is 160 dpi. 
PRODUCT_PROPERTY_OVERRIDES += \
    ro.sf.lcd_density=240

# Default network mode is CDMA/EVDO auto.
PRODUCT_PROPERTY_OVERRIDES += \
    ro.telephony.default_network=4

# Disable JIT by default
PRODUCT_PROPERTY_OVERRIDES += \
    dalvik.vm.execution-mode=int:jit \
    persist.sys.use_dithering=0

# The OpenGL ES API level that is natively supported by this device.
# This is a 16.16 fixed point number
PRODUCT_PROPERTY_OVERRIDES += \
    ro.opengles.version=131072

# Don't put dexfiles in /cache on e910
PRODUCT_PROPERTY_OVERRIDES += \
    dalvik.vm.dexopt-data-only=1

# wpa_supplicant configuration file
PRODUCT_COPY_FILES += \
    device/hisense/e910/wpa_supplicant.conf:system/etc/wifi/wpa_supplicant.conf

ifeq ($(TARGET_PREBUILT_KERNEL),)
	LOCAL_KERNEL := device/hisense/e910/kernel
else
	LOCAL_KERNEL := $(TARGET_PREBUILT_KERNEL)
endif

PRODUCT_COPY_FILES += \
    $(LOCAL_KERNEL):kernel

## (2) Also get non-open-source aspects if available
$(call inherit-product-if-exists, vendor/hisense/e910/e910-vendor.mk)

$(call inherit-product, $(SRC_TARGET_DIR)/product/generic.mk)

# Discard inherited values and use our own instead.
PRODUCT_NAME := generic_e910
PRODUCT_DEVICE := e910
PRODUCT_MODEL := Hisense E910
