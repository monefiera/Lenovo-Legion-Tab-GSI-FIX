#!/system/bin/sh
# Do NOT assume where your module will be located.
# ALWAYS use $MODDIR if you need to know where this script
# and module is placed.
# This will make sure your module will still work
# if Magisk change its mount point in the future
MODDIR=${0%/*}

# This script will be executed in late_start service mode

echo "1" > /proc/gesture_control
pm disable-user --user 0 com.android.providers.contacts
pm disable-user --user 0 com.android.nfc
pm uninstall --user 0 com.android.smspush
pm uninstall --user 0 me.phh.treble.overlay.cafims_telephony
pm uninstall --user 0 me.phh.treble.overlay.hwims_telephony
pm uninstall --user 0 me.phh.treble.overlay.mtkims_telephony
pm uninstall --user 0 me.phh.treble.overlay.slsiims_telephony
pm uninstall --user 0 me.phh.treble.overlay.sprdims_telephony
pm uninstall --user 0 me.phh.treble.overlay.telephony.lte
pm uninstall --user 0 me.phh.treble.overlay.tethering
pm uninstall --user 0 com.android.mms.service
pm uninstall --user 0 com.android.stk
pm uninstall --user 0 com.android.simappdialog
pm uninstall --user 0 com.android.providers.blockednumber
pm uninstall --user 0 com.android.messaging
pm uninstall --user 0 com.android.cellbroadcastreceiver.module
pm uninstall --user 0 com.android.carrierdefaultapp
pm uninstall --user 0 com.android.server.telecom
pm uninstall --user 0 com.android.dialer
pm uninstall --user 0 com.android.phone
pm uninstall --user 0 com.android.contacts
pm uninstall --user 0 im.angry.openeuicc
pm uninstall --user 0 com.google.android.dialer
pm uninstall --user 0 com.google.android.contacts
