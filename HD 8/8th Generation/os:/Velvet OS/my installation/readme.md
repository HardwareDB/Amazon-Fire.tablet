# My steps adapted from the guide, it works!
prime: https://github.com/hexdump0815/imagebuilder/tree/main/systems/tablet_amazon_karnak

# Steps:
1. find an empty SD card and Extract the image: `gunzip -k tablet_amazon_karnak-armv7l-focal.img.gz`
3. Turn on tablet & boot into TWRP. Hold <Volume Up> + <Power>, you can then release <power> once screen turns on
5. Mount image: and get the `boot.img` from bootfs
6. ADB push it onto tablet's SD card: `adb push boot.img /sdcard`

7. Write image to internal storage: `adb shell dd if=/sdcar/boot.img of=/dev/block/platform/mtk-msdc.0/by-name/boot`
8. Run bootpatch script: `adb shell sh /fix-bootpatch.sh`
