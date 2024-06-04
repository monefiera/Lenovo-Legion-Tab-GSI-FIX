REPLACE="
"

# External Tools
chmod -R 0755 $MODPATH/addon/Volume-Key-Selector/tools

chooseport_legacy() {
  # Keycheck binary by someone755 @Github, idea for code below by Zappo @xda-developers
  # Calling it first time detects previous input. Calling it second time will do what we want
  [ "$1" ] && local delay=$1 || local delay=10
  local error=false
  while true; do
    timeout 0 $MODPATH/addon/Volume-Key-Selector/tools/$ARCH32/keycheck
    timeout $delay $MODPATH/addon/Volume-Key-Selector/tools/$ARCH32/keycheck
    local sel=$?
    if [ $sel -eq 42 ]; then
      return 0
    elif [ $sel -eq 41 ]; then
      return 1
    elif $error; then
      echo "Volume key not detected!"
    else
      error=true
      echo "Volume key not detected. Try again"
    fi
  done
}

chooseport() {
  # Original idea by chainfire and ianmacd @xda-developers
  [ "$1" ] && local delay=$1 || local delay=10
  local error=false 
  while true; do
    local count=0
    while true; do
      timeout $delay /system/bin/getevent -lqc 1 2>&1 > $TMPDIR/events &
      sleep 0.5; count=$((count + 1))
      if (`grep -q 'KEY_VOLUMEUP *DOWN' $TMPDIR/events`); then
        return 0
      elif (`grep -q 'KEY_VOLUMEDOWN *DOWN' $TMPDIR/events`); then
        return 1
      fi
      [ $count -gt 6 ] && break
    done
    if $error; then
      # abort "Volume key not detected!"
      echo "Volume key not detected. Trying keycheck method"
      export chooseport=chooseport_legacy VKSEL=chooseport_legacy
      return $?
    else
      error=true
      echo "Volume key not detected. Try again"
      exit 1
    fi
  done
}

ui_print " "
ui_print "Do you wanna disable DT2W feature?"
ui_print "   Vol Up = Yes, Vol Down = No"
ui_print "ダブルタップで画面オンを無効化しますか?"
ui_print "   音量上 = 無効化、音量下 = 有効化"
if chooseport; then
rm -rf $MODPATH/service.sh
ui_print "Disabled."
ui_print "無効化しました。"
fi

ui_print " "
ui_print "Disabling phone apps for cell standby…"
ui_print "セルスタンバイの原因となるアプリを無効化します…"
ui_print " "
  sleep 1.0
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

rm -r /data/dalvik-cache
rm -r /cache/dalvik-cache

rm -rf $MODPATH/addon/
