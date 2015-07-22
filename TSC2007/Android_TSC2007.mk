# ----------------------------------------------------------------------------
# Makefile for Forlinx  OK6410
#

#LOCAL_PATH := $(call my-dir)

# ----------------------------------------------------------------------------
# Lets install our own init.rc files :)
#include $(CLEAR_VARS)

#target_init_rc_file := $(TARGET_ROOT_OUT)/init.rc
#$(target_init_rc_file) : $(LOCAL_PATH)/init.rc | $(ACP)
#	$(transform-prebuilt-to-target)
#ALL_PREBUILT += $(target_init_rc_file)

# ----------------------------------------------------------------------------
# copy base files
include $(CLEAR_VARS)

PRODUCT_COPY_FILES += \
        $(LOCAL_PATH)/../common/TSC2007/ts.conf:system/etc/ts.conf \
        $(LOCAL_PATH)/../common/TSC2007/tsc2007.rc:root/tsc2007.rc \
        $(LOCAL_PATH)/../common/TSC2007/linuxrc:root/linuxrc \
        $(LOCAL_PATH)/../common/TSC2007/calibrate:system/bin/calibrate
#	$(LOCAL_PATH)/../common/TSC2007/TSC2007_Touchscreen.idc:system/usr/idc/TSC2007_Touchscreen.idc
    
# End of file
# vim: syntax=make

