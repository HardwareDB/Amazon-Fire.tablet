# This is a little Different from the guide, but it works!
prime: https://github.com/hexdump0815/imagebuilder/tree/main/systems/tablet_amazon_karnak

# Steps:
1. Format an empty SD card with `partition-table: MBR` and a single EXT4 partition with no name!
2. with tablet off, Insert SD card.
3. Turn on tablet & boot into TWRP. Hold <Volume Up> + <Power>, you can then release <power> once screen turns on
4. Mount the SD card in TWRP: go to "Mount -> Select Storage -> SD card" It will mont in `/auto0-1`
- Check to make sure it's mounted: `adb shell df -h /auto0-1`
- Now you can transfer the image using `ADB push`
  
5. Extract the image: `gunzip -k tablet_amazon_karnak-armv7l-focal.img.gz`
6. ADB push it onto tablet's SD card: `adb push tablet_amazon_karnak-armv7l-focal.img /auto0-1`

Continuing from guide:
7. Write image to internal storage: `adb shell dd if=/auto0-1/tablet_amazon_karnak-armv7l-focal.img of=/dev/block/platform/mtk-msdc.0/by-name/boot`
8. Run bootpatch script: `adb shell sh /fix-bootpatch.sh`
