# POCO Gaming Auto

A Magisk module for automatic gaming performance tuning on POCO X3 Pro.

## What it does

- Monitors supported PUBG package IDs.
- Switches available CPU policies to the performance governor while PUBG is running.
- Switches the Qualcomm KGSL GPU governor to performance when available.
- Saves the original governors and restores them after PUBG exits.
- Waits for Android boot completion before monitoring.
- Does not disable thermal protections.
- Does not force unsupported frequencies.

## Supported PUBG packages

- Global: com.tencent.ig
- Global variant: com.tencent.igfit
- India: com.pubg.imobile
- Vietnam: com.vng.pubgmobile
- Taiwan/selected variants: com.rekoo.pubgm
- Korea: com.pubg.krmobile

## Installation

Install the Magisk module package, reboot if Magisk requests it, and verify the module is enabled.

## Notes

This module changes governor settings only when a supported PUBG process is detected. It restores the governors captured immediately before activation.
