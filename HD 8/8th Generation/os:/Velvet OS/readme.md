#  Velvet OS - on: Fire HD 8 2018 (karnak)
guide: https://github.com/hexdump0815/imagebuilder/blob/main/systems/tablet_amazon_karnak/readme.md

status: works, but Has ceased development. [commit: message](https://github.com/hexdump0815/imagebuilder/commit/d418f6befa12940dfebc719b12de69efd2ee88f7)

# release: 220220-02, Tested: Works! :-)

image:
```
# distro: Ubuntu Focal, arch: armv7l
userspace: armv7, 32 bit
rom: "tablet_amazon_karnak-armv7l-focal.img.gz"
rom_url: "https://github.com/hexdump0815/imagebuilder/releases/download/220220-02/tablet_amazon_karnak-armv7l-focal.img.gz"
```

notes:
- Requires running `adb shell sh /fix-bootpatch.sh`, which is the "Amonet" modification of this TWRP.
- Use "Accessibility -> Onscreen keyboard" to login
