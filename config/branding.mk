BUILD_DATE := $(shell date +%Y%m%d)
BUILD_TIME := $(shell date +%H%M)
# Versioning System
# Use signing keys for only official
ifndef SSOS_BUILD_TYPE
    SSOS_BUILD_TYPE := UNOFFICIAL
endif

# Set all versions
SSOS_BASE_VERSION := 2.2
SSOS_CODENAME := Marshtomp
SSOS_PLATFORM_VERSION := 11
SSOS_VERSION := ShapeShiftOS-$(SSOS_BASE_VERSION)-$(SSOS_CODENAME)-$(SSOS_BUILD_TYPE)-$(TARGET_PRODUCT)-$(BUILD_DATE)-$(BUILD_TIME)
ROM_FINGERPRINT := ShapeShiftOS/$(PLATFORM_VERSION)/$(SSOS_BUILD_TYPE)/$(BUILD_DATE)$(BUILD_TIME)
DISPLAY_SSOS_SETTINGS := $(SSOS_BASE_VERSION) \\ $(SSOS_CODENAME) \\ $(SSOS_BUILD_TYPE)

ifeq ($(SSOS_BUILD_TYPE),OFFICIAL)
    PLATFORM_SSOS_VERSION := $(SSOS_BASE_VERSION).REL.$(shell date +%m%d%H%M)
else
    PLATFORM_SSOS_VERSION := $(SSOS_BASE_VERSION).INT.$(shell date +%m%d%H%M)
endif

# Declare it's a ShapeShiftOS build
SSOS_BUILD := true
