# Inherit AOSP device configuration for galaxys3.
$(call inherit-product, device/lge/e975/e975.mk)

# Inherit GSM common stuff
$(call inherit-product, vendor/rootbox/configs/gsm.mk)

# Inherit RootBox common bits
$(call inherit-product, vendor/rootbox/configs/common.mk)

# S3 overlay
PRODUCT_PACKAGE_OVERLAYS += vendor/rootbox/overlay/e975

# PA OVERLAY_TARGET
OVERLAY_TARGET := pa_e975

# Setup device specific product configuration.
PRODUCT_DEVICE := e975
PRODUCT_NAME := rootbox_e975
PRODUCT_BRAND := lge
PRODUCT_MODEL := LG-E975
PRODUCT_MANUFACTURER := LGE

# Set build fingerprint / ID / Product Name ect.
PRODUCT_BUILD_PROP_OVERRIDES += PRODUCT_NAME=geehrc_open_eu TARGET_DEVICE=e975 BUILD_FINGERPRINT="lge/geehrc_open_eu/geehrc:4.1.2/JZO54K/E97510b.1360741472:user/release-keys" PRIVATE_BUILD_DESC="geehrc_open_eu-user 4.1.2 JZO54K E97510b.1360741472 release-keys"

# Copy maguro specific prebuilt files
PRODUCT_COPY_FILES += \
    vendor/rootbox/prebuilt/bootanimation/bootanimation_1280_720.zip:system/media/bootanimation.zip
