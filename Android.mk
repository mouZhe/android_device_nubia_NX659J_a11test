LOCAL_PATH := $(call my-dir)

ifeq ($(TARGET_DEVICE),NX659J)
include $(call all-subdir-makefiles,$(LOCAL_PATH))
endif
