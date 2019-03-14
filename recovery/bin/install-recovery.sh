#!/system/bin/sh
if ! applypatch -c EMMC:/dev/block/bootdevice/by-name/recovery:14691628:120c44199d6d4d7c44bbe83cc9d7e0217455384c; then
  applypatch -b /system/etc/recovery-resource.dat EMMC:/dev/block/bootdevice/by-name/boot:11611432:039658143a21f46f25a4a37d9f323ead32b897e3 EMMC:/dev/block/bootdevice/by-name/recovery 120c44199d6d4d7c44bbe83cc9d7e0217455384c 14691628 039658143a21f46f25a4a37d9f323ead32b897e3:/system/recovery-from-boot.p && log -t recovery "Installing new recovery image: succeeded" || log -t recovery "Installing new recovery image: failed"
else
  log -t recovery "Recovery image already installed"
fi
