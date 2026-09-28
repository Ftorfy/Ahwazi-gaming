# 🎮 POCO Gaming Auto

A lightweight Magisk module for automatic gaming performance tuning on the POCO X3 Pro.

## ✨ Features

- Detects supported PUBG processes automatically.
- Switches available CPU policies to the `performance` governor while PUBG is running.
- Switches the Qualcomm KGSL GPU governor to `performance` when available.
- Saves the original governor settings before activation.
- Restores the original CPU/GPU governors after PUBG exits.
- Starts monitoring only after Android boot is complete.
- Does **not** disable thermal protections.
- Does **not** force unsupported frequencies.

## 🎯 Supported PUBG packages

| Version / Region | Package |
|---|---|
| PUBG Global | `com.tencent.ig` |
| PUBG Global variant | `com.tencent.igfit` |
| PUBG Mobile India | `com.pubg.imobile` |
| PUBG Mobile Vietnam | `com.vng.pubgmobile` |
| PUBG Mobile Taiwan / selected variants | `com.rekoo.pubgm` |
| PUBG Mobile Korea | `com.pubg.krmobile` |

## 📱 Tested setup

Developed and tested on a rooted **POCO X3 Pro 8/256** running Android 13 / MIUI 14.

The tested behavior is:

**PUBG starts → CPU/GPU performance governor → PUBG exits → original governors restored.**

## 🛡️ Safety

This module intentionally keeps Android's thermal management in place. It does not lock unsupported frequencies and it restores the governor values that were captured when gaming mode was activated.

As with any root modification, use it at your own risk and keep a backup of your device configuration.

## 📦 Installation

Install the Magisk module package, reboot if Magisk requests it, and make sure the module is enabled.

## 🔧 Troubleshooting

The module writes its monitor log to:

`/data/local/tmp/poco_gaming_auto.log`

The temporary state is stored inside the module's `state` directory while a supported game is active.

## ❤️ Support the project

If this module is useful to you and you'd like to support continued testing and development, you can send a voluntary donation in **USDT on BNB Smart Chain (BEP20)**:

**Wallet:** `0x1E08B24B9C3aAEb9Fca8CD6243993b530b8d050F`

⚠️ **Network:** BNB Smart Chain (BEP20) only for this address.  
Do **not** send USDT via TRON/TRC20 to this `0x...` address.

Support is completely voluntary. Thank you for helping keep the project alive. 🙏

## 🏷️ Tags

`Magisk` `POCO` `POCO-X3-Pro` `Android` `Gaming` `PUBG-Mobile` `PUBG` `Performance` `CPU-Governor` `GPU-Governor` `Root` `MIUI` `Snapdragon` `USDT` `BEP20`

---

**Version:** 1.0  
**Version code:** 1  
**License:** Use responsibly.
