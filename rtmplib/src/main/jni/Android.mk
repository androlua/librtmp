LOCAL_PATH := $(call my-dir)

include $(CLEAR_VARS)
LOCAL_C_INCLUDES += $(LOCAL_PATH)/
LOCAL_C_INCLUDES += $(LOCAL_PATH)/librtmp/

LOCAL_SRC_FILES += $(LOCAL_PATH)/librtmp/amf.c
LOCAL_SRC_FILES += $(LOCAL_PATH)/librtmp/hashswf.c
LOCAL_SRC_FILES += $(LOCAL_PATH)/librtmp/log.c
LOCAL_SRC_FILES += $(LOCAL_PATH)/librtmp/parseurl.c
LOCAL_SRC_FILES += $(LOCAL_PATH)/librtmp/rtmp.c
LOCAL_SRC_FILES += $(LOCAL_PATH)/librtmp/librtmp.c
LOCAL_SRC_FILES += $(LOCAL_PATH)/librtmp/rtmpclient.c

LOCAL_LDLIBS += -lz
LOCAL_LDLIBS +=-L$(SYSROOT)/usr/lib -llog

LOCAL_MODULE := librtmp
include $(BUILD_SHARED_LIBRARY)



