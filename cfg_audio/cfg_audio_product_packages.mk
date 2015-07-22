
# Depoly binary resource, LOCAL_PATH is device folder
#ifeq ($(BOARD_USE_BINARY_BUILD),true)
	BINARY_SRC := $(LOCAL_PATH)/../common/cfg_audio


	# Deploy files to system/lib/
	BINARY_DST := /system/bin/
	PRODUCT_COPY_FILES += \
		$(BINARY_SRC)/cfg_audio:$(BINARY_DST)/cfg_audio
