
# added for MTK MT6620
#$(info PRODUCT_PACKAGES include MTK MT6620 )

PRODUCT_PROPERTY_OVERRIDES += \
	magiclab.hw.mt6620.fmrec.enable=0 \
	magiclab.hw.mt6620.fmspk.enable=0

# kernel drivers
PRODUCT_PACKAGES += \
	mtk_hif_sdio.ko \
	mtk_stp_wmt.ko \
	mtk_stp_gps.ko \
	mtk_stp_uart.ko \
	mtk_stp_bt.ko \
	mtk_wmt_wifi.ko \
	hci_stp.ko \
	mtk_gps.ko \
	mt6620_fm_drv.ko \
	mtk_fm_priv.ko \
	wlan.ko \
	p2p.ko

# Common
PRODUCT_PACKAGES += \
	6620_launcher \
	6620_wmt_lpbk \
	WMT.cfg \
	mnl.prop \
	mt6620_patch_e3_0_hdr.bin \
	mt6620_patch_e3_1_hdr.bin \
	mt6620_patch_e3_2_hdr.bin \
	mt6620_patch_e3_3_hdr.bin


# BT
PRODUCT_PACKAGES += \
	libbluetooth_mtk \
	libbluetoothem_ex \
	autobt

# GPS
PRODUCT_PACKAGES += \
	libmnlp \
	mnld \
	gps.default \
	gps.exynos4

#AGPS
#PRODUCT_PACKAGES += \
#        mtk_agpsd \
#        libagpssupl \
#        libssladp

# FM
PRODUCT_PACKAGES += \
	libfmcust \
	libfmjni \
	libfmmt6620 \
#	FMRadio \
	fmtest

# WLAN
PRODUCT_PACKAGES += \
	hald \
	hdc \
	libwifitest \
	wifitest \
	wpa_supplicant \
	wpa_supplicant.conf \
	wpa_cli \
	p2p_supplicant \
	p2p_supplicant.conf \
	libp2p_client \
	WIFI_RAM_CODE \
	WIFI_RAM_CODE_E6 \
	WIFI \
	WIFI_CUSTOM

# HW test tool
PRODUCT_PACKAGES += \
	wcntest \
	wcntestd \
	wcnem \
	libfmr \
	libautogps

# Config
PRODUCT_PACKAGES += \
	BT.cfg \
	dhcpcd.conf

PRODUCT_COPY_FILES += \
	frameworks/base/data/etc/android.hardware.wifi.xml:system/etc/permissions/android.hardware.wifi.xml \
	$(LOCAL_PATH)/../common/mt6620/init.mt6620.rc:root/init.wireless.rc  \
