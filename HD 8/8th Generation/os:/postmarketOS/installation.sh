pmbootstrap init
pmbootstrap install --android-recovery-zip --recovery-install-partition=data
# amazon-karnak

# Make sure you're booted into TWRP at this point
pmbootstrap flasher --method=adb sideload
