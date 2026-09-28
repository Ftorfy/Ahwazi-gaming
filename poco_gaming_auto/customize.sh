#!/system/bin/sh
ui_print "- Applying POCO Gaming Auto permissions"
set_perm "$MODPATH/service.sh" 0 0 0755
rm -f "$MODPATH/post-fs-data.sh" "$MODPATH/boot.sh"
rm -f /data/adb/service.d/poco_gaming_auto.sh
