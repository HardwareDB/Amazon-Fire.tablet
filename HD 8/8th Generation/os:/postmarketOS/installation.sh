pmbootstrap init
pmbootstrap install --android-recovery-zip --recovery-install-partition=data
# amazon-karnak

# Make sure you're booted into TWRP at this point
pmbootstrap flasher --method=adb sideload

#from: https://wiki.postmarketos.org/wiki/Amazon_Fire_HD_8_2018_(amazon-karnak)
