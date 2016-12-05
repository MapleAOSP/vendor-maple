# Version information used on all builds
PRODUCT_BUILD_PROP_OVERRIDES += BUILD_DISPLAY_ID=NDE63X BUILD_ID=NDE63X BUILD_VERSION_TAGS=release-keys BUILD_UTC_DATE=0

ANDROID_NAME := 7.1
export ANDROID_NAME

    CUSTOM_BUILD_TYPE := REL
    PLATFORM_VERSION_CODENAME := REL
    MAPLE_POSTFIX := -$(shell date -u +%Y%m%d)

ROM_RELEASE := 5.0
OTA_DATE := $(shell date -u +%Y%m%d)
ROM_VERSION := $(ANDROID_NAME)-Release-$(ROM_RELEASE)_$(OTA_DATE)

PRODUCT_PROPERTY_OVERRIDES += \
  ro.maple.version=$(ROM_RELEASE) \
  ro.modversion=$(ROM_VERSION)

MAPLE_ROM_NAME := MapleAOSP

PRODUCT_PROPERTY_OVERRIDES += \
    ro.ota.version=$(OTA_DATE) \
    ro.ota.device=angler \
    ro.ota.manifest=http://maple.oceighty.co/ota.xml \
    ro.ota.romname=angler

PRODUCT_PACKAGES += \
    MapleOTA \
    libbypass
