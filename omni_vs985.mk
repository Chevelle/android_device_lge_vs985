# Inherit some common OMNI stuff.
$(call inherit-product, vendor/omni/config/cdma.mk)

# Bootanimation
TARGET_BOOTANIMATION_SIZE := 1080x608

# Inherit omni custom
$(call inherit-product, vendor/omni/config/common.mk)

# Inherit device
$(call inherit-product, device/lge/vs985/device.mk)

# Inherit from the common Open Source product configuration
$(call inherit-product, $(SRC_TARGET_DIR)/product/aosp_base_telephony.mk)

# Set those variables here to overwrite the inherited values.
PRODUCT_DEVICE := vs985
PRODUCT_NAME := omni_vs985
PRODUCT_BRAND := lge
PRODUCT_MODEL := LG-VS985
PRODUCT_MANUFACTURER := LGE

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRODUCT_DEVICE="g3" \
    PRODUCT_NAME="g3_vzw_us" \
    BUILD_FINGERPRINT="lge/g3_vzw/g3:6.0/MRA58K/160141503d43c:user/release-keys" \
    PRIVATE_BUILD_DESC="g3_vzw-user 6.0 MRA58K 160141503d43c release-keys"

PRODUCT_GMS_CLIENTID_BASE := android-verizon
