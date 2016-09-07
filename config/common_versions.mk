# Version information used on all builds
PRODUCT_BUILD_PROP_OVERRIDES += BUILD_DISPLAY_ID=NRD90S BUILD_ID=NRD90S BUILD_VERSION_TAGS=release-keys BUILD_UTC_DATE=0

ANDROID_NAME := 7.0
export ANDROID_NAME

    CUSTOM_BUILD_TYPE := UNOFFICIAL
    PLATFORM_VERSION_CODENAME := UNOFFICIAL
    MAPLE_POSTFIX := -$(shell date -u +%Y%m%d)

ROM_RELEASE := 1.0
OTA_DATE := $(shell date -u +%Y%m%d)
ROM_VERSION := $(ANDROID_NAME)-Release-$(ROM_RELEASE)_$(OTA_DATE)

PRODUCT_PROPERTY_OVERRIDES += \
  ro.maple.version=$(ROM_RELEASE) \
  ro.modversion=$(ROM_VERSION)

MAPLE_ROM_NAME := MapleAOSP

PRODUCT_PROPERTY_OVERRIDES += \
    ro.ota.romname=$(TARGET_DEVICE) \
    ro.ota.version=$(OTA_DATE) \
    ro.ota.device=$(TARGET_DEVICE)
