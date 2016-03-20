LOCAL_PATH:= $(call my-dir)
include $(CLEAR_VARS)

LOCAL_SRC_FILES := shared/$(TARGET_ARCH_ABI)/libfontconfig.so
LOCAL_MODULE:= fontconfig
include $(PREBUILT_SHARED_LIBRARY)