# Copyright (C) 2009 The Android Open Source Project
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
# This file sets variables that control the way modules are built
# thorughout the system. It should not be used to conditionally
# disable makefiles (the proper mechanism to control what gets
# included in a build is to use PRODUCT_PACKAGES in a product
# definition file).
#

# WARNING: This line must come *before* including the proprietary
# variant, so that it gets overwritten by the parent (which goes
# against the traditional rules of inheritance).
USE_CAMERA_STUB := true

# inherit from the proprietary version
-include vendor/hisense/e910/BoardConfigVendor.mk

TARGET_BOOTLOADER_BOARD_NAME := e910
TARGET_NO_BOOTLOADER := true

TARGET_BOARD_PLATFORM := msm7x27a
TARGET_BOARD_PLATFORM_GPU := qcom

TARGET_CPU_ABI := armeabi-v7a
TARGET_CPU_ABI2 := armeabi
TARGET_ARCH_VARIANT := armv7-a-neon
#TARGET_ARCH_VARIANT_CPU := cortex-a8
TARGET_ARCH_VARIANT_FPU := neon
#ARCH_ARM_HAVE_TLS_REGISTER := true
#ARCH_ARM_HAVE_VFP := true
TARGET_SPECIFIC_HEADER_PATH := device/hisense/e910/include

# Wifi related defines
BOARD_WPA_SUPPLICANT_DRIVER := AWEXT
WIFI_DRIVER_MODULE_PATH     := /system/lib/modules/ar6000.ko
WIFI_DRIVER_MODULE_NAME     := ar6000

# Kernel
BOARD_KERNEL_BASE := 0x00200000
BOARD_FORCE_RAMDISK_ADDRESS := 0x01200000
BOARD_KERNEL_CMDLINE := console=ttyMSM2,115200,n8 androidboot.hardware=qcom loglevel=7
TARGET_PREBUILT_KERNEL := device/hisense/e910/kernel
TARGET_RECOVERY_INITRC := device/hisense/e910/init.recovery.rc

BOARD_HAVE_BLUETOOTH := true
BOARD_HAVE_BLUETOOTH_BCM := true

BOARD_HAVE_GPS := true

BOARD_USE_USB_MASS_STORAGE_SWITCH := true

# OpenGL drivers config file path
BOARD_EGL_CFG := device/hisense/e910/egl.cfg
USE_OPENGL_RENDERER     := true
TARGET_USES_GENLOCK     := true
BOARD_USES_HGL := true
BOARD_USES_OVERLAY := true
# Unnecessary with new egl libs
#COMMON_GLOBAL_CFLAGS   += -DMISSING_EGL_EXTERNAL_IMAGE -DMISSING_EGL_PIXEL_FORMAT_YV12
# We only have 2 buffers so still need to hack it.
#COMMON_GLOBAL_CFLAGS    += -DMISSING_GRALLOC_BUFFERS
# Just a safety measure to make sure its all included
COMMON_GLOBAL_CFLAGS    += -DQCOM_HARDWARE
# Force refresh rate since fps calc is broke and reports 0
#COMMON_GLOBAL_CFLAGS    += -DREFRESH_RATE=60
# qsd8k: no support for overlay, bypass, or c2d
#TARGET_USE_OVERLAY      := false
#TARGET_HAVE_BYPASS      := false
#TARGET_USES_C2D_COMPOSITION := false
# Allow fallback to ashmem
#TARGET_GRALLOC_USES_ASHMEM := true
# Debuging egl
COMMON_GLOBAL_CFLAGS    += -DEGL_TRACE


NO_FALLBACK_FONT := false

TARGET_PROVIDES_LIBAUDIO := false

BOARD_USES_QCOM_LIBS := true
BOARD_USES_QCOM_HARDWARE := true
BOARD_USES_QCOM_LIBRPC := true
BOARD_VENDOR_QCOM_GPS_LOC_API_HARDWARE := e910
BOARD_VENDOR_QCOM_GPS_LOC_API_AMSS_VERSION := 3200

TARGET_LIBAGL_USE_GRALLOC_COPYBITS := true
#BOARD_NO_RGBX_8888 := true

BOARD_HAVE_FM_RADIO := true
BOARD_GLOBAL_CFLAGS += -DHAVE_FM_RADIO

# Misc
BOARD_USE_OPENSSL_ENGINE := true

JS_ENGINE := v8

# Stagefright fully enabled
#BUILD_WITH_FULL_STAGEFRIGHT := true

AVOID_DRAW_TEXTURE_EXTENSION := true

TARGET_OTA_ASSERT_DEVICE := pulse,e910
TARGET_BOOTLOADER_BOARD_NAME=e910

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

BOARD_FLASH_BLOCK_SIZE := 4096
BOARD_BOOTIMAGE_PARTITION_SIZE     := 0x00a00000
BOARD_RECOVERYIMAGE_PARTITION_SIZE := 0x00a00000
BOARD_SYSTEMIMAGE_PARTITION_SIZE   := 0x08800000
BOARD_USERDATAIMAGE_PARTITION_SIZE := 0x0fc00000

