# android_device_nubia_NX659J_a11test
For building TWRP for Nubia RedMagic 5G / 5S

TWRP device tree for Nubia RedMagic 5G and RedMagic 5S

Kernel and all blobs are extracted from [NX659J-update.zip](http://romdownload.nubia.com/%E7%BA%A2%E9%AD%945G/V9.50/NX659J-update.zip) firmware.

The Nubia RedMagic 5G (codenamed _"NX659J"_) and Nubia RedMagic 5S (codenamed _"NX659J_V1S or NX659J"_) are high-end gaming smartphones from Nubia.

Nubia RedMagic 5G / 5S was announced and released in March / July 2020.

## Device specifications

| Device       | Nubia RedMagic 5G / 5S                      |
| -----------: | :------------------------------------------ |
| SoC          | Qualcomm SM8250 Snapdragon 865              |
| CPU          | 8x Qualcomm® Kryo™ 585 up to 2.84GHz        |
| GPU          | Adreno 650                                  |
| Memory       | 8GB / 12GB/ 16GB RAM (LPDDR5)               |
| Shipped Android version | 10                               |
| Storage      | 128GB / 256GB UFS 3.0 flash storage         |
| Battery      | Non-removable Li-Po 4500mAh                 |
| Dimensions   | 168.56 x 78 x 9.76 mm                       |
| Display      | 2340 x 1080 (19.5:9), 6.65 inch             |

## Device picture

![Nubia RedMagic 5G](https://ui.nubia.cn/upload/image/5e66e39ab9ea42.jpg)

## Features

**Works**

- Booting.
- ADB
- MTP
- OTG
- Super partition functions
- Vibration

RedMagic 5G is using Dynamic Partition! We need update from TWRP.

## Compile

First checkout minimal twrp with omnirom tree:

```
repo init -u git://github.com/minimal-manifest-twrp/platform_manifest_twrp_aosp.git -b twrp-11
repo sync
```

Then add these projects to .repo/manifest.xml:

```xml
<project path="device/nubia/NX659J" name="mouZhe/android_device_nubia_NX659J_a11test" remote="github" revision="main" />
```

Use ccache
```
#Enable ccache
export USE_CCACHE=1
export CCACHE_EXEC=$(which ccache)
```

Finally execute these:

```
export ALLOW_MISSING_DEPENDENCIES=true
. build/envsetup.sh
lunch twrp_NX659J-eng
mka recoveryimage
```

To test it:

```
fastboot boot out/target/product/NX659J/recovery.img
```

## Thanks
- [FsCrypt fix by mauronofrio](https://github.com/mauronofrio/android_bootable_recovery)
- [Decryption by bigbiff](https://github.com/bigbiff/android_bootable_recovery)
- [Oneplus 8 TWRP by mauronofrio](https://github.com/mauronofrio/android_device_oneplus_instantnoodle_TWRP)
- [Xiaomi 10 TWRP by sekaiacg](https://github.com/sekaiacg/android_device_xiaomi_umi_TWRP)
