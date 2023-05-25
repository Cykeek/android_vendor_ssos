BUILD_DATE := $(shell date +%Y%m%d)
BUILD_TIME := $(shell date +%H%M)
# Versioning System
# Use signing keys for only official
ifndef SSOS_BUILD_TYPE
    SSOS_BUILD_TYPE := UNOFFICIAL
endif

# Set all versions
SSOS_BASE_VERSION := LTS
SSOS_CODENAME := Extended
SSOS_PLATFORM_VERSION := Red_Velvet_Cake
TARGET_PRODUCT_SHORT := $(subst ssos_,,$(TARGET_PRODUCT))
SSOS_VERSION := ShapeShiftOS-$(SSOS_BASE_VERSION)-$(SSOS_CODENAME)-$(TARGET_PRODUCT_SHORT)-$(BUILD_DATE)-$(BUILD_TIME)
ROM_FINGERPRINT := ShapeShiftOS/$(PLATFORM_VERSION)/$(BUILD_DATE)$(BUILD_TIME)
DISPLAY_SSOS_SETTINGS := $(SSOS_BASE_VERSION) \\ $(SSOS_CODENAME)

ifeq ($(SSOS_BUILD_TYPE),OFFICIAL)
    PLATFORM_SSOS_VERSION := $(SSOS_BASE_VERSION).REL.$(shell date +%m%d%H%M)
else
    PLATFORM_SSOS_VERSION := $(SSOS_BASE_VERSION).INT.$(shell date +%m%d%H%M)
endif

# Declare it's a ShapeShiftOS build
SSOS_BUILD := true
