# 🎮 POCO Gaming Auto

> **Automatic Magisk gaming profile for PUBG Mobile — performance while gaming, automatic restore after exit.**

[![Version](https://img.shields.io/badge/version-1.0-blue)](https://github.com/Ftorfy/Ahwazi-gaming)
[![Platform](https://img.shields.io/badge/platform-Android-green)](https://github.com/Ftorfy/Ahwazi-gaming)
[![Root](https://img.shields.io/badge/root-Magisk-red)](https://github.com/Ftorfy/Ahwazi-gaming)

POCO Gaming Auto is a lightweight Magisk module created and tested on a rooted **POCO X3 Pro 8/256**, Android 13 / MIUI 14.

## ⚡ What it does

When a supported PUBG process starts, the module:

- ⚙️ switches available CPU policies to the `performance` governor
- 🎮 switches the Qualcomm KGSL GPU governor to `performance` when available
- 💾 saves the governor values that were active before gaming
- 🔄 restores those original values automatically after PUBG exits
- 🕐 waits for Android boot completion before monitoring

### 🛡️ What it does NOT do

- ❌ Does not disable thermal protections
- ❌ Does not force unsupported frequencies
- ❌ Does not permanently lock the CPU/GPU at maximum frequency

## 🎯 Supported PUBG packages

| Region / Version | Package |
|---|---|
| 🌍 PUBG Global | `com.tencent.ig` |
| 🌍 Global variant | `com.tencent.igfit` |
| 🇮🇳 PUBG Mobile India | `com.pubg.imobile` |
| 🇻🇳 PUBG Mobile Vietnam | `com.vng.pubgmobile` |
| 🇹🇼 Taiwan / selected variants | `com.rekoo.pubgm` |
| 🇰🇷 PUBG Mobile Korea | `com.pubg.krmobile` |

## 📱 Tested device

**POCO X3 Pro 8/256**  
Android 13  
MIUI 14  
Root: Magisk

Verified behavior:

```
PUBG starts
    ↓
CPU governor → performance
GPU governor → performance
    ↓
PUBG exits
    ↓
Original governors restored
```

## 📦 Installation

1. Download `poco_gaming_auto_v1.0.zip`.
2. Open Magisk.
3. Install the ZIP as a Magisk module.
4. Reboot if requested.
5. Launch a supported PUBG version.

The module starts monitoring automatically after boot.

## 🔧 Troubleshooting

Monitor log:

```
/data/local/tmp/poco_gaming_auto.log
```

Temporary gaming state is stored inside the module's `state` directory while PUBG is active.

## ❤️ Support the project

If POCO Gaming Auto helps your gaming experience and you want to support continued testing and development, voluntary support is appreciated.

### USDT — BNB Smart Chain (BEP20)

```
0x1E08B24B9C3aAEb9Fca8CD6243993b530b8d050F
```

⚠️ **Network: BNB Smart Chain (BEP20) only.**

**Do not send USDT via TRON/TRC20 to this `0x...` address.**

Support is completely voluntary. Thank you. 🙏

## 🤝 Contributing

Issues, compatibility reports, testing feedback, and improvements are welcome.

When reporting a problem, include:

- Phone model
- Android version
- MIUI/HyperOS version
- PUBG package name
- Whether the device is rooted
- Relevant log output

## 🏷️ Topics

`magisk` · `android` · `poco-x3-pro` · `pubg-mobile` · `pubg` · `gaming` · `root` · `performance` · `cpu-governor` · `gpu-governor` · `miui` · `snapdragon` · `usdt` · `bep20`

## 📜 Version

**v1.0 — versionCode 1**

See [CHANGELOG.md](CHANGELOG.md) for release history.

---

### ⭐ If this project is useful to you

A GitHub ⭐ helps other users discover the project and motivates further testing and development.

**Use responsibly. Root modifications can affect device stability.**
