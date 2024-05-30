#!/system/bin/sh
# Do NOT assume where your module will be located.
# ALWAYS use $MODDIR if you need to know where this script
# and module is placed.
# This will make sure your module will still work
# if Magisk change its mount point in the future
MODDIR=${0%/*}

# This script will be executed in late_start service mode

echo "1" > /proc/gesture_control
echo 4200000 > /sys/class/power_supply/battery/voltage_max
pm disable-user --user 0 com.android.providers.contacts
pm disable-user --user 0 com.android.nfc
pm uninstall --user 0 me.phh.treble.overlay.cafims_telephony
pm uninstall --user 0 me.phh.treble.overlay.hwims_telephony
pm uninstall --user 0 me.phh.treble.overlay.slsiims_telephony
pm uninstall --user 0 me.phh.treble.overlay.sprdims_telephony
pm uninstall --user 0 me.phh.treble.overlay.telephony.lte
pm uninstall --user 0 me.phh.treble.overlay.tethering
pm uninstall --user 0 com.google.android.keep
pm uninstall --user 0 com.android.simappdialog
pm uninstall --user 0 com.android.cellbroadcastreceiver
pm uninstall --user 0 com.android.smspush
pm uninstall --user 0 com.android.cellbroadcastservice
pm uninstall --user 0 com.android.calllogbackup

count=0
until [ "$(getprop init.svc.touchscreen_hal_service)" = "running" -o "$count" -ge 20 ]
do
  sleep 1
  count=$((count+1))
done

chown root:root /proc/game_mode
chmod 644 /proc/game_mode
