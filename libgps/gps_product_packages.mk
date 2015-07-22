
# Depoly binary resource, LOCAL_PATH is device folder
#ifeq ($(BOARD_USE_BINARY_BUILD),true)
	LIB_SRC := $(LOCAL_PATH)/../common/libgps


	# Deploy files to system/lib/
	LIB_DST := /system/lib/hw/
	PRODUCT_COPY_FILES += \
		$(LIB_SRC)/gps.exynos4.so:$(LIB_DST)/gps.exynos4.so
