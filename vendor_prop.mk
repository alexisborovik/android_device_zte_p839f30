# Audio
PRODUCT_PROPERTY_OVERRIDES += \
    voice.playback.conc.disabled=true \
    voice.record.conc.disabled=true \
    voice.voip.conc.disabled=true

# Cabl
PRODUCT_PROPERTY_OVERRIDES += \
    ro.qcom.ad.calib.data=/data/misc/display/calib.cfg \
    ro.qcom.ad=1 \
    ro.qualcomm.cabl=2

# Display
PRODUCT_PROPERTY_OVERRIDES += \
    ro.sf.lcd_density=480 \
    ro.opengles.version=196610

# Perfd
PRODUCT_PROPERTY_OVERRIDES += \
    ro.min_freq_0=960000 \
    ro.min_freq_4=800000
