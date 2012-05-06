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

LOCAL_PATH := $(call my-dir)

#file := $(TARGET_ROOT_OUT)/init.rc
#ALL_PREBUILT += $(file)
#$(file) : $(LOCAL_PATH)/init.rc | $(ACP)
#	$(transform-prebuilt-to-target)

file := $(TARGET_ROOT_OUT)/init.qcom.rc
ALL_PREBUILT += $(file)
$(file) : $(LOCAL_PATH)/init.qcom.rc | $(ACP)
	$(transform-prebuilt-to-target)

file := $(TARGET_ROOT_OUT)/init.cal.rc
ALL_PREBUILT += $(file)
$(file) : $(LOCAL_PATH)/init.cal.rc | $(ACP)
	$(transform-prebuilt-to-target)

file := $(TARGET_ROOT_OUT)/init.qcom.sh
ALL_PREBUILT += $(file)
$(file) : $(LOCAL_PATH)/init.qcom.sh | $(ACP)
	$(transform-prebuilt-to-target)

file := $(TARGET_ROOT_OUT)/init.target.rc
ALL_PREBUILT += $(file)
$(file) : $(LOCAL_PATH)/init.target.rc | $(ACP)
	$(transform-prebuilt-to-target)

#file := $(TARGET_ROOT_OUT)/ueventd.rc
#ALL_PREBUILT += $(file)
#$(file) : $(LOCAL_PATH)/ueventd.rc | $(ACP)
#	$(transform-prebuilt-to-target)

-include vendor/hisense/e910/AndroidBoardVendor.mk

