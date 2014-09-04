# Inherit common OSR stuff
$(call inherit-product, vendor/osr/config/common.mk)

# Bring in all video files
$(call inherit-product, frameworks/base/data/videos/VideoPackage2.mk)

# Include OSR audio files
include vendor/osr/config/osr_audio.mk

# Include OSR LatinIME dictionaries
PRODUCT_PACKAGE_OVERLAYS += vendor/osr/overlay/dictionaries

# Optional OSR packages
PRODUCT_PACKAGES += \
    Galaxy4 \
    HoloSpiralWallpaper \
    LiveWallpapers \
    LiveWallpapersPicker \
    MagicSmokeWallpapers \
    NoiseField \
    PhaseBeam \
    VisualizationWallpapers \
    PhotoTable \
    SoundRecorder \
    PhotoPhase

PRODUCT_PACKAGES += \
    VideoEditor \
    libvideoeditor_jni \
    libvideoeditor_core \
    libvideoeditor_osal \
    libvideoeditor_videofilters \
    libvideoeditorplayer

# Extra tools in OSR
PRODUCT_PACKAGES += \
    vim
