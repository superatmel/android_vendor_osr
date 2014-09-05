# Inherit common OSR stuff
$(call inherit-product, vendor/osr/config/common.mk)

# Include OSR audio files
include vendor/osr/config/osr_audio.mk

# Default notification/alarm sounds
PRODUCT_PROPERTY_OVERRIDES += \
    ro.config.notification_sound=Argon.ogg \
    ro.config.alarmvendor/cm_alert=Hassium.ogg

ifeq ($(TARGET_SCREEN_WIDTH) $(TARGET_SCREEN_HEIGHT),$(space))
    PRODUCT_COPY_FILES += \
        vendor/osr/prebuilt/common/bootanimation/800.zip:system/media/bootanimation.zip
endif
