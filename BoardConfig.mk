# Copyright (C) 2007 The Android Open Source Project
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

# config.mk
#
# Product-specific compile-time definitions.
#

# WARNING: This line must come *before* including the proprietary
# variant, so that it gets overwritten by the parent (which goes
# against the traditional rules of inheritance).
USE_CAMERA_STUB := true

# inherit from the proprietary version
-include vendor/hisense/e910/BoardConfigVendor.mk


TARGET_CPU_ABI := armeabi-v7a
TARGET_CPU_ABI2 := armeabi
TARGET_ARCH_VARIANT := armv7-a-neon
TARGET_BOARD_PLATFORM := msm7k
TARGET_BOARD_PLATFORM_GPU := qcom
TARGET_BOOTLOADER_BOARD_NAME := 7x27
TARGET_AVOID_DRAW_TEXTURE_EXTENSION := true
TARGET_USES_16BPPSURFACE_FOR_OPAQUE := true
QCOM_TARGET_PRODUCT := msm7627a
TARGET_CORTEX_CACHE_LINE_32 := true

TARGET_NO_BOOTLOADER := true
#TARGET_NO_RECOVERY := true

# Wifi related defines
BOARD_WPA_SUPPLICANT_DRIVER := AWEXT
WIFI_DRIVER_MODULE_PATH     := /system/lib/modules/ar6000.ko
WIFI_DRIVER_MODULE_NAME     := ar6000

# Kernel
BOARD_KERNEL_BASE := 0x00200000
#BOARD_KERNEL_PAGESIZE := 4096
BOARD_KERNEL_SPARESIZE := 128
BOARD_HAS_8BIT_BCHECC_SUPPORT := true
BOARD_KERNEL_BCHECC_SPARESIZE := 160
BOARD_SUPPORTS_2KNAND_PAGE := true
BOARD_KERNEL_2KPAGESIZE := 2048
BOARD_KERNEL_2KSPARESIZE := 64
BOARD_FORCE_RAMDISK_ADDRESS := 0x01200000
BOARD_KERNEL_CMDLINE := console=ttyMSM2,115200,n8 androidboot.hardware=qcom loglevel=7
ARCH_ARM_HAVE_TLS_REGISTER := true
TARGET_RECOVERY_INITRC := device/hisense/e910/init.recovery.rc

BOARD_HAVE_BLUETOOTH := true

BOARD_USE_USB_MASS_STORAGE_SWITCH := true

# OpenGL drivers config file path
BOARD_EGL_CFG := device/hisense/e910/egl.cfg

NO_FALLBACK_FONT:=true

TARGET_PROVIDES_LIBAUDIO := true
TARGET_PROVIDES_LIBLIGHTS := true

# This one may look a little strange in a Huawei config.
# The u8220 returns a 5 string response to QUERY_AVAILABLE_NETWORKS and the framework expects a 4 string response. 
# Apparently new HTC RIL does the same thing so this setting also fixes the u8220 issue.
BOARD_USE_NEW_LIBRIL_HTC := true

BOARD_USES_QCOM_LIBS := true
BOARD_USES_QCOM_LIBRPC := true
BOARD_VENDOR_QCOM_GPS_LOC_API_HARDWARE := e910
BOARD_VENDOR_QCOM_GPS_LOC_API_AMSS_VERSION := 3200

TARGET_LIBAGL_USE_GRALLOC_COPYBITS := true
#BOARD_NO_RGBX_8888 := true

JS_ENGINE := v8

# Stagefright fully enabled
#BUILD_WITH_FULL_STAGEFRIGHT := true

AVOID_DRAW_TEXTURE_EXTENSION := true

TARGET_OTA_ASSERT_DEVICE := pulse,e910

# # cat /proc/mtd
# dev:    size   erasesize  name
# mtd0: 00a00000 00020000 "boot"
# mtd1: 08800000 00020000 "system"
# mtd2: 00800000 00020000 "cache"
# mtd3: 00400000 00020000 "misc"
# mtd4: 00400000 00020000 "persist"
# mtd5: 00a00000 00020000 "recovery"
# mtd6: 00a00000 00020000 "customer"
# mtd7: 01400000 00020000 "cdrom"
# mtd8: 00100000 00020000 "preload"
# mtd9: 00f00000 00020000 "phonedata"
# mtd10: 0fc00000 00020000 "userdata"

BOARD_FLASH_BLOCK_SIZE := 131072 # (BOARD_KERNEL_PAGESIZE * 64)
BOARD_BOOTIMAGE_PARTITION_SIZE     := 0x00a00000
BOARD_RECOVERYIMAGE_PARTITION_SIZE := 0x00a00000
BOARD_SYSTEMIMAGE_PARTITION_SIZE   := 0x08800000
BOARD_USERDATAIMAGE_PARTITION_SIZE := 0x0fc00000

TARGET_PREBUILT_KERNEL := device/hisense/e910/kernel
