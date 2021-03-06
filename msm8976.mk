#
# Copyright (C) 2016 The CyanogenMod Project
# Copyright (C) 2017 The LineageOS Project
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#      http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#

COMMON_PATH := device/samsung/c9lte-common

# inherit from the proprietary version
$(call inherit-product, vendor/samsung/c9lte-common/c9lte-common-vendor.mk)

# Overlays
DEVICE_PACKAGE_OVERLAYS += $(COMMON_PATH)/overlay

# Permissions
PRODUCT_COPY_FILES += \
    frameworks/native/data/etc/android.hardware.bluetooth_le.xml:system/etc/permissions/android.hardware.bluetooth_le.xml \
    frameworks/native/data/etc/android.hardware.bluetooth.xml:system/etc/permissions/android.hardware.bluetooth.xml \
    frameworks/native/data/etc/android.hardware.camera.autofocus.xml:system/etc/permissions/android.hardware.camera.autofocus.xml \
    frameworks/native/data/etc/android.hardware.camera.front.xml:system/etc/permissions/android.hardware.camera.front.xml \
    frameworks/native/data/etc/android.hardware.location.gps.xml:system/etc/permissions/android.hardware.location.gps.xml \
    frameworks/native/data/etc/android.hardware.nfc.hce.xml:system/etc/permissions/android.hardware.nfc.hce.xml \
    frameworks/native/data/etc/android.hardware.nfc.xml:system/etc/permissions/android.hardware.nfc.xml \
    frameworks/native/data/etc/android.hardware.opengles.aep.xml:system/etc/permissions/android.hardware.opengles.aep.xml \
    frameworks/native/data/etc/android.hardware.sensor.accelerometer.xml:system/etc/permissions/android.hardware.sensor.accelerometer.xml \
    frameworks/native/data/etc/android.hardware.sensor.compass.xml:system/etc/permissions/android.hardware.sensor.compass.xml \
    frameworks/native/data/etc/android.hardware.sensor.gyroscope.xml:system/etc/permissions/android.hardware.sensor.gyroscope.xml \
    frameworks/native/data/etc/android.hardware.sensor.light.xml:system/etc/permissions/android.hardware.sensor.light.xml \
    frameworks/native/data/etc/android.hardware.telephony.cdma.xml:system/etc/permissions/android.hardware.telephony.cdma.xml \
    frameworks/native/data/etc/android.hardware.telephony.gsm.xml:system/etc/permissions/android.hardware.telephony.gsm.xml \
    frameworks/native/data/etc/android.hardware.touchscreen.multitouch.jazzhand.xml:system/etc/permissions/android.hardware.touchscreen.multitouch.jazzhand.xml \
    frameworks/native/data/etc/android.hardware.usb.accessory.xml:system/etc/permissions/android.hardware.usb.accessory.xml \
    frameworks/native/data/etc/android.hardware.usb.host.xml:system/etc/permissions/android.hardware.usb.host.xml \
    frameworks/native/data/etc/android.hardware.wifi.xml:system/etc/permissions/android.hardware.wifi.xml \
    frameworks/native/data/etc/android.hardware.wifi.direct.xml:system/etc/permissions/android.hardware.wifi.direct.xml \
    frameworks/native/data/etc/android.software.freeform_window_management.xml:system/etc/permissions/android.software.freeform_window_management.xml \
    frameworks/native/data/etc/android.software.midi.xml:system/etc/permissions/android.software.midi.xml \
    frameworks/native/data/etc/android.software.sip.voip.xml:system/etc/permissions/android.software.sip.voip.xml \
    frameworks/native/data/etc/com.android.nfc_extras.xml:system/etc/permissions/com.android.nfc_extras.xml \
    frameworks/native/data/etc/com.nxp.mifare.xml:system/etc/permissions/com.nxp.mifare.xml \
    frameworks/native/data/etc/android.hardware.vulkan.level-0.xml:system/etc/permissions/android.hardware.vulkan.level-0.xml \
    frameworks/native/data/etc/android.hardware.vulkan.version-1_0_3.xml:system/etc/permissions/android.hardware.vulkan.version-1_0_3.xml \
    frameworks/native/data/etc/handheld_core_hardware.xml:system/etc/permissions/handheld_core_hardware.xml

# ANT+
PRODUCT_PACKAGES += \
    AntHalService \
    com.dsi.ant.antradio_library \
    libantradio

PRODUCT_COPY_FILES += \
    external/ant-wireless/antradio-library/com.dsi.ant.antradio_library.xml:system/etc/permissions/com.dsi.ant.antradio_library.xml

# Connectivity Engine support (CNE)
PRODUCT_PACKAGES += \
    libcnefeatureconfig

# DataServices
PRODUCT_PACKAGES += \
    librmnetctl

# Audio
PRODUCT_PACKAGES += \
    audiod \
    audio.a2dp.default \
    audio.primary.msm8952 \
    audio.r_submix.default \
    audio.usb.default \
    libaudio-resampler \
    libaudioroute \
    libqcompostprocbundle \
    libqcomvisualizer \
    libqcomvoiceprocessing \
    libtinycompress \
    tinymix \
    libtinyalsa

# Audio TFA-AMP
PRODUCT_COPY_FILES += \
    $(COMMON_PATH)/audio/Tfa9897.cnt:system/etc/Tfa9897.cnt \
    $(COMMON_PATH)/audio/audio_platform_info_extcodec.xml:system/etc/audio_platform_info_extcodec.xml

PRODUCT_COPY_FILES += \
    $(COMMON_PATH)/audio/aanc_tuning_mixer.txt:system/etc/aanc_tuning_mixer.txt \
    $(COMMON_PATH)/audio/audio_effects.conf:system/etc/audio_effects.conf \
    $(COMMON_PATH)/audio/audio_effects_sec.conf:system/etc/audio_effects_sec.conf \
    $(COMMON_PATH)/audio/audio_platform_info.xml:system/etc/audio_platform_info.xml \
    $(COMMON_PATH)/audio/audio_policy.conf:system/etc/audio_policy.conf \
    $(COMMON_PATH)/audio/mixer_paths.xml:system/etc/mixer_paths.xml \
    $(COMMON_PATH)/audio/audio_output_policy.conf:system/vendor/etc/audio_output_policy.conf \
    $(COMMON_PATH)/audio/sound_trigger_mixer_paths.xml:system/etc/sound_trigger_mixer_paths.xml \
    $(COMMON_PATH)/audio/sound_trigger_mixer_paths_wcd9335.xml:system/etc/sound_trigger_mixer_paths_wcd9335.xml \
    $(COMMON_PATH)/audio/sound_trigger_platform_info.xml:system/etc/sound_trigger_platform_info.xml \
    $(COMMON_PATH)/audio/audio_platform_info_extcodec.xml:system/etc/audio_platform_info_extcodec.xml \
    $(COMMON_PATH)/audio/mixer_paths_wcd9335.xml:system/etc/mixer_paths_wcd9335.xml \
    $(COMMON_PATH)/audio/drc/drc_cfg_5.1.txt:system/etc/drc/drc_cfg_5.1.txt \
    $(COMMON_PATH)/audio/drc/drc_cfg_AZ.txt:system/etc/drc/drc_cfg_AZ.txt \
    $(COMMON_PATH)/audio/surround_sound_3mic/surround_sound_rec_5.1.cfg:system/etc/surround_sound_3mic/surround_sound_rec_5.1.cfg \
    $(COMMON_PATH)/audio/surround_sound_3mic/surround_sound_rec_AZ.cfg:system/etc/surround_sound_3mic/surround_sound_rec_AZ.cfg

# XML Audio configuration files
PRODUCT_COPY_FILES += \
    frameworks/av/services/audiopolicy/config/a2dp_audio_policy_configuration.xml:system/etc/a2dp_audio_policy_configuration.xml \
    frameworks/av/services/audiopolicy/config/audio_policy_volumes.xml:system/etc/audio_policy_volumes.xml \
    frameworks/av/services/audiopolicy/config/default_volume_tables.xml:system/etc/default_volume_tables.xml \
    frameworks/av/services/audiopolicy/config/r_submix_audio_policy_configuration.xml:system/etc/r_submix_audio_policy_configuration.xml \
    frameworks/av/services/audiopolicy/config/usb_audio_policy_configuration.xml:system/etc/usb_audio_policy_configuration.xml


# Boot animation
TARGET_SCREEN_HEIGHT := 1920
TARGET_SCREEN_WIDTH := 1080

# Camera
PRODUCT_PACKAGES += \
    camera.msm8952

# Device characteristics
PRODUCT_CHARACTERISTICS := phone
$(call inherit-product-if-exists, frameworks/native/build/phone-xhdpi-2048-dalvik-heap.mk)

# Display
PRODUCT_PACKAGES += \
    AdvancedDisplay \
    copybit.msm8952 \
    gralloc.msm8952 \
    hwcomposer.msm8952 \
    memtrack.msm8952 \
    liboverlay

# Doze
PRODUCT_PACKAGES += \
    SamsungDoze

# For android_filesystem_config.h
PRODUCT_PACKAGES += \
    fs_config_files

# FM
PRODUCT_PACKAGES += \
    FMRadio \
    libfmjni

# GPS
PRODUCT_PACKAGES += \
    gps.msm8952 \
    libcurl \
    libgnsspps

PRODUCT_PACKAGES += \
    flp.conf \
    gps.conf \
    izat.conf \
    lowi.conf \
    sap.conf \
    xtwifi.conf

# IPC router config
PRODUCT_COPY_FILES += \
    $(COMMON_PATH)/configs/sec_config:system/etc/sec_config \
    $(COMMON_PATH)/configs/sec_config_oem:system/etc/sec_config_oem

# IPv6
PRODUCT_PACKAGES += \
    ebtables \
    ethertypes \
    libebtc

# IRQ
PRODUCT_COPY_FILES += \
    $(COMMON_PATH)/configs/msm_irqbalance.conf:system/vendor/etc/msm_irqbalance.conf \
    $(COMMON_PATH)/configs/msm_irqbalance_little_big.conf:system/vendor/etc/msm_irqbalance_little_big.conf

# Keylayout
PRODUCT_COPY_FILES += \
    $(COMMON_PATH)/keylayout/ft5x06_ts.kl:system/usr/keylayout/ft5x06_ts.kl \
    $(COMMON_PATH)/keylayout/gpio-keys.kl:system/usr/keylayout/gpio-keys.kl \
    $(COMMON_PATH)/keylayout/sec_touchkey.kl:system/usr/keylayout/sec_touchkey.kl \
    $(COMMON_PATH)/keylayout/synaptics_dsx.kl:system/usr/keylayout/synaptics_dsx.kl \
    $(COMMON_PATH)/keylayout/synaptics_rmi4_i2c.kl:system/usr/keylayout/synaptics_rmi4_i2c.kl

# Keymaster
PRODUCT_PACKAGES += \
    keystore.msm8952

# Lights
PRODUCT_PACKAGES += \
    lights.MSM8952

# Media
PRODUCT_COPY_FILES += \
    $(COMMON_PATH)/configs/media_codecs.xml:system/etc/media_codecs.xml \
    $(COMMON_PATH)/configs/media_codecs.xml:system/etc/media_codecs_8956.xml \
    $(COMMON_PATH)/configs/media_codecs.xml:system/etc/media_codecs_8956_v1.xml \
    $(COMMON_PATH)/configs/media_codecs_performance.xml:system/etc/media_codecs_performance.xml \
    $(COMMON_PATH)/configs/media_codecs_performance_8956.xml:system/etc/media_codecs_performance_8956.xml \
    $(COMMON_PATH)/configs/media_codecs_performance_8956_v1.xml:system/etc/media_codecs_performance_8956_v1.xml \
    $(COMMON_PATH)/configs/media_profiles_8956.xml:system/etc/media_profiles_8956.xml \
    $(COMMON_PATH)/configs/media_profiles.xml:system/etc/media_profiles.xml

PRODUCT_COPY_FILES += \
    frameworks/av/media/libstagefright/data/media_codecs_google_audio.xml:system/etc/media_codecs_google_audio.xml \
    frameworks/av/media/libstagefright/data/media_codecs_google_telephony.xml:system/etc/media_codecs_google_telephony.xml \
    frameworks/av/media/libstagefright/data/media_codecs_google_video.xml:system/etc/media_codecs_google_video.xml

# OMX
PRODUCT_PACKAGES += \
    libc2dcolorconvert \
    libextmedia_jni \
    libOmxAacEnc \
    libOmxAmrEnc \
    libOmxCore \
    libOmxEvrcEnc \
    libOmxQcelp13Enc \
    libOmxSwVencHevc \
    libOmxVenc \
    libstagefrighthw

# Power
PRODUCT_PACKAGES += \
    power.msm8952

# Qualcomm dependencies
PRODUCT_PACKAGES += \
    libtinyxml \
    libxml2

# Ramdisk
PRODUCT_PACKAGES += \
    fstab.qcom \

PRODUCT_PACKAGES += \
    init.qcom.rc \
    init.qcom.sh \
    init.qcom.bt.sh \
    init.qcom.fm.sh \
    init.qcom.post_boot.sh \
    init.qcom.power.rc \
    init.target.rc \
    init.qcom.usb.rc \
    init.qcom.usb.sh \
    init.qti.ims.sh \
    ueventd.qcom.rc \
    powersnd.rc

# RIL
PRODUCT_PACKAGES += \
    libril \
    librilutils \
    libxml2

# Screen density
PRODUCT_AAPT_CONFIG := normal
PRODUCT_AAPT_PREF_CONFIG := xxhdpi

# Sensors
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/configs/sensors/hals.conf:system/etc/sensors/hals.conf \
    $(LOCAL_PATH)/configs/sensors/sensor_def_qcomdev.conf:system/etc/sensors/sensor_def_qcomdev.conf

# TimeKeep
PRODUCT_PACKAGES += \
    timekeep \
    TimeKeep

# IPACM 
PRODUCT_PACKAGES += \
    IPACM_cfg.xml \
    ipacm
 
# NFC
PRODUCT_COPY_FILES += \
    $(COMMON_PATH)/configs/nfc/libnfc-sec-hal.conf:system/etc/libnfc-sec-hal.conf \
    $(COMMON_PATH)/configs/nfc/libnfc-sec.conf:system/etc/libnfc-brcm.conf \
    $(COMMON_PATH)/configs/nfc/nfcee_access.xml:system/etc/nfcee_access.xml

PRODUCT_PACKAGES += \
    com.android.nfc_extras \
    libnfc_nci_jni \
    libnfc-nci \
    NfcNci \
    Tag

PRODUCT_PROPERTY_OVERRIDES += \
    ro.nfc.sec_hal=true

# Wifi
PRODUCT_PACKAGES += \
    hostapd_default.conf \
    hostapd \
    wpa_supplicant \
    wpa_supplicant.conf

PRODUCT_PACKAGES += \
    p2p_supplicant_overlay.conf \
    wpa_supplicant_overlay.conf

PRODUCT_PACKAGES += \
    WCNSS_wlan_dictionary.dat

PRODUCT_PACKAGES += \
    libcurl \
    libqsap_sdk \
    libQWiFiSoftApCfg \
    tcpdump \
    wcnss_service

# Strict Mode
ifeq ($(TARGET_BUILD_VARIANT),eng)
	PRODUCT_PROPERTY_OVERRIDES += \
		persist.sys.strictmode.disable=true
endif
