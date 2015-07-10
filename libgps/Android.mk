# Use hardware GPS implementation if available.
#

LOCAL_PATH:= $(call my-dir)
include $(CLEAR_VARS)

ifeq ($(BOARD_HAVE_X_GPS), true)

LOCAL_MODULE := gps.$(TARGET_PRODUCT)
LOCAL_MODULE_TAGS := eng

LOCAL_SRC_FILES := \
	main_gps.c \
	nmea_reader.h \
	nmea_reader.c \
	nmea_tokenizer.h \
	nmea_tokenizer.c

LOCAL_SHARED_LIBRARIES := \
	libutils \
	libcutils \
	libdl \
	libc

LOCAL_CFLAGS += -DANDROID -Wall -Wextra

LOCAL_PRELINK_MODULE := false
LOCAL_MODULE_PATH := $(TARGET_OUT_SHARED_LIBRARIES)/hw
include $(BUILD_SHARED_LIBRARY)

endif
