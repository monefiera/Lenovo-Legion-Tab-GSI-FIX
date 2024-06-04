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
pm disable-user --user 0 com.android.smspush
pm disable-user --user 0 me.phh.treble.overlay.cafims_telephony
pm disable-user --user 0 me.phh.treble.overlay.hwims_telephony
pm disable-user --user 0 me.phh.treble.overlay.mtkims_telephony
pm disable-user --user 0 me.phh.treble.overlay.slsiims_telephony
pm disable-user --user 0 me.phh.treble.overlay.sprdims_telephony
pm disable-user --user 0 me.phh.treble.overlay.telephony.lte
pm disable-user --user 0 me.phh.treble.overlay.tethering
pm disable-user --user 0 com.android.mms.service
pm disable-user --user 0 com.android.stk
pm disable-user --user 0 com.android.simappdialog
pm disable-user --user 0 com.android.providers.blockednumber
pm disable-user --user 0 com.android.messaging
pm disable-user --user 0 com.android.cellbroadcastreceiver.module
pm disable-user --user 0 com.android.carrierdefaultapp
pm disable-user --user 0 com.android.server.telecom
pm disable-user --user 0 com.android.dialer
pm disable-user --user 0 com.android.phone
pm disable-user --user 0 com.android.contacts
pm disable-user --user 0 im.angry.openeuicc
pm disable-user --user 0 com.google.android.dialer
pm disable-user --user 0 com.google.android.contacts

su -c "rm -r /data/dalvik-cache"
su -c "rm -r /cache/dalvik-cache"
