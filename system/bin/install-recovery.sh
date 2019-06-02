#!/system/bin/sh
if ! applypatch -c EMMC:/dev/block/bootdevice/by-name/recovery:60605774:bcc5dcec0c9cbb493ff38ce66c1a7a80ce793c5f; then
  applypatch -b /system/etc/recovery-resource.dat EMMC:/dev/block/bootdevice/by-name/boot:54605130:6e4436f66d423edd38049644f24e829b2b271828 EMMC:/dev/block/bootdevice/by-name/recovery bcc5dcec0c9cbb493ff38ce66c1a7a80ce793c5f 60605774 6e4436f66d423edd38049644f24e829b2b271828:/system/recovery-from-boot.p && log -t recovery "Installing new recovery image: succeeded" || log -t recovery "Installing new recovery image: failed"
else
  log -t recovery "Recovery image already installed"
fi
