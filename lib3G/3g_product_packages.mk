
# Depoly binary resource, LOCAL_PATH is device folder
#ifeq ($(BOARD_USE_BINARY_BUILD),true)
	LIB_SRC := $(LOCAL_PATH)/../common/lib3G


	# Deploy files to system/lib/
	LIB_DST := /system/lib/
	PRODUCT_COPY_FILES += \
		$(LIB_SRC)/libreference-ril.so:$(LIB_DST)/libreference-ril.so
