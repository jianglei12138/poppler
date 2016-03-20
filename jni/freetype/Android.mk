
LOCAL_PATH:= $(call my-dir)
include $(CLEAR_VARS)

LOCAL_SRC_FILES := shared/$(TARGET_ARCH_ABI)/libfreetype.so
LOCAL_MODULE:= freetype
include $(PREBUILT_SHARED_LIBRARY)
