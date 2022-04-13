#!/system/bin/sh
if ! applypatch -c EMMC:/dev/block/platform/mtk-msdc.0/11230000.msdc0/by-name/recovery:11070764:29d34fd91554f29727570cbb9f3a747fb5bd822f; then
  applypatch EMMC:/dev/block/platform/mtk-msdc.0/11230000.msdc0/by-name/boot:9473320:3f4029610a5171b8cf5f0c516acba31bb4d0f459 EMMC:/dev/block/platform/mtk-msdc.0/11230000.msdc0/by-name/recovery 29d34fd91554f29727570cbb9f3a747fb5bd822f 11070764 3f4029610a5171b8cf5f0c516acba31bb4d0f459:/system/recovery-from-boot.p && log -t recovery "Installing new recovery image: succeeded" || log -t recovery "Installing new recovery image: failed"
else
  log -t recovery "Recovery image already installed"
fi
