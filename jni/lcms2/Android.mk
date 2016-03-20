LOCAL_PATH:= $(call my-dir)
include $(CLEAR_VARS)

LOCAL_SRC_FILES := static/$(TARGET_ARCH_ABI)/liblcms.a
LOCAL_MODULE:= lcms2
include $(PREBUILT_STATIC_LIBRARY)
