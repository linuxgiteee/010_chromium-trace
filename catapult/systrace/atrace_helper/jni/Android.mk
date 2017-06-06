# Copyright 2017 The Chromium Authors. All rights reserved.
# Use of this source code is governed by a BSD-style license that can be
# found in the LICENSE file.

LOCAL_PATH := $(call my-dir)

include $(CLEAR_VARS)

LOCAL_MODULE := atrace_helper
LOCAL_CPPFLAGS := -std=c++11 -Wall -Wextra -Werror -O2
LOCAL_CPPFLAGS += -fPIE -fno-rtti -fno-exceptions -fstack-protector
LOCAL_CPP_EXTENSION := .cc
LOCAL_LDLIBS := -fPIE -pie -llog

LOCAL_SRC_FILES := \
    main.cc \
    file_utils.cc \
    process_info.cc \
    process_memory_stats.cc

include $(BUILD_EXECUTABLE)
