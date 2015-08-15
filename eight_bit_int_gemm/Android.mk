# Copyright (C) 2015 The Android Open Source Project
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

LOCAL_PATH:=$(call my-dir)

include $(CLEAR_VARS)
LOCAL_CLANG := true
LOCAL_MODULE := libbnnmlowp

LOCAL_CPP_EXTENSION := .cc
LOCAL_SRC_FILES:= eight_bit_int_gemm.cc

LOCAL_CFLAGS += -no-integrated-as -std=c++11
LOCAL_C_INCLUDES += external/gemmlowp/

include $(BUILD_STATIC_LIBRARY)

include $(CLEAR_VARS)
LOCAL_CLANG := true
LOCAL_MODULE := libbnnmlowpV8

LOCAL_SDK_VERSION := 8

LOCAL_CPP_EXTENSION := .cc
LOCAL_SRC_FILES:= eight_bit_int_gemm.cc

LOCAL_CFLAGS += -no-integrated-as -std=c++11
LOCAL_CFLAGS += -DGEMMLOWP_USE_OLD_ANDROID_SDK
LOCAL_C_INCLUDES += external/gemmlowp/
LOCAL_NDK_STL_VARIANT := stlport_static

include $(BUILD_STATIC_LIBRARY)
