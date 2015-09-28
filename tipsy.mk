# Release name
PRODUCT_RELEASE_NAME := grouper

# Boot animation
TARGET_SCREEN_HEIGHT := 1280
TARGET_SCREEN_WIDTH := 800

# Inherit some common Slim stuff.
$(call inherit-product, vendor/tipsy/config/common_full_tablet_wifionly.mk)

# Enhanced NFC
$(call inherit-product, vendor/tipsy/config/nfc_enhanced.mk)

# Inherit device configuration
$(call inherit-product, device/asus/grouper/full_grouper.mk)

# Device identifier. This must come after all inclusions
PRODUCT_DEVICE := grouper
PRODUCT_NAME := tipsy_grouper
PRODUCT_BRAND := Google
PRODUCT_MODEL := Nexus 7
PRODUCT_MANUFACTURER := Asus

PRODUCT_RESTRICT_VENDOR_FILES := false

#Set build fingerprint / ID / Product Name ect.
PRODUCT_BUILD_PROP_OVERRIDES += PRODUCT_NAME=nakasi BUILD_FINGERPRINT="google/nakasi/grouper:5.1/LMY47D/1743759:user/release-keys" PRIVATE_BUILD_DESC="nakasi-user 5.1 LMY47D 1743759 release-keys"
		
# Bootanimation		
PRODUCT_COPY_FILES += \		
	device/asus/grouper/prebuilt/bootanimation.zip:system/media/bootanimation.zip