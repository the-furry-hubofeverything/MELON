#!/usr/bin/env bash
# shellcheck disable=SC2034

iso_name="MELON"
iso_label="MELON_$(date +%Y%m)"
iso_publisher="hubofeverything <53921912+the-furry-hubofeverything@users.noreply.github.com>"
iso_application="Minecraft Enhanced Linux Operating eNvironment"
iso_version="0.1+$(date +%Y.%m.%d)"
install_dir="arch"
bootmodes=('bios.syslinux.mbr' 'bios.syslinux.eltorito' 'uefi-x64.systemd-boot.esp' 'uefi-x64.systemd-boot.eltorito')
arch="x86_64"
pacman_conf="pacman.conf"
airootfs_image_type="squashfs"
airootfs_image_tool_options=('-comp' 'xz' '-Xbcj' 'x86' '-b' '1M' '-Xdict-size' '1M')
file_permissions=(
  ["/etc/shadow"]="0:0:0400"
  ["/etc/gshadow"]="0:0:0400"
)
