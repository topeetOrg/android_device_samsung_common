
# Depoly binary resource, LOCAL_PATH is device folder
#ifneq ($(BOARD_HAVE_MPU6050),true)
#	BINARY_SRC := $(LOCAL_PATH)/../common/libsensors_mpu3050

	# Deploy files to obj/lib
#	BINARY_DST := obj/lib/
#	PRODUCT_COPY_FILES += \
#		$(BINARY_SRC)/libmllite.so:$(BINARY_DST)/libmllite.so \
#		$(BINARY_SRC)/libmlplatform.so:$(BINARY_DST)/libmlplatform.so \
#		$(BINARY_SRC)/libmplmpu.so:$(BINARY_DST)/libmplmpu.so \
#		$(BINARY_SRC)/libinvensense_hal.so:$(BINARY_DST)/libinvensense_hal.so \
#		$(BINARY_SRC)/sensors.smdk4x12.so:$(BINARY_DST)/sensors.smdk4x12.so

	# Deploy files to system/lib/
#	BINARY_DST := system/lib/
#	PRODUCT_COPY_FILES += \
#		$(BINARY_SRC)/libmllite.so:$(BINARY_DST)/libmllite.so \
#		$(BINARY_SRC)/libmlplatform.so:$(BINARY_DST)/libmlplatform.so \
#		$(BINARY_SRC)/libmplmpu.so:$(BINARY_DST)/libmplmpu.so \
#		$(BINARY_SRC)/libinvensense_hal.so:$(BINARY_DST)/libinvensense_hal.so \
#		$(BINARY_SRC)/sensors.smdk4x12.so:$(BINARY_DST)/hw/sensors.smdk4x12.so
#endif
