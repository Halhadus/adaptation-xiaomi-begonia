#!/bin/bash
if [ ! -e /usr/lib/adaptation-xiaomi-begonia/.installed ]; then
    groupadd --gid 9997 android_everybody
    useradd -u 1018 -g 1018 usb -s /bin/true
    usermod -aG tty,disk,kmem,dialout,plugdev,systemd-journal,systemd-network,input,kvm,render,netdev,bluetooth,pulse,pulse-access,system,radio,android_bluetooth,android_graphics,android_input,android_audio,android_camera,android_log,android_compass,android_wifi,android_media,android_sdcard_rw,android_vpn,android_usb,android_gps,android_media_rw,android_mtp,android_drmrpc,android_everybody,android_nfc,android_sdcard_r,android_mediadrm,android_debuggerd,android_cache,android_net_bt_admin,android_net_bt,android_inet,android_inet_raw,android_inet_admin,android_readproc,android_wakelock,android_uhid,android_misc,android_audioserver,android_mediacodec,android_cameraserver droidian
    cp -rf /usr/lib/adaptation-xiaomi-begonia/pre-start.sh /var/lib/lxc/android/pre-start.sh
    cp -rf /usr/lib/adaptation-xiaomi-begonia/droidian-camera.conf /etc/droidian-camera.conf
    systemctl disable firstrun
    systemctl mask firstrun
    touch /usr/lib/adaptation-xiaomi-begonia/.installed
fi
