#!/bin/bash

url="https://git.kernel.org/pub/scm/linux/kernel/git/firmware/linux-firmware.git/plain/i915/"

echo -e "DESCARGANDO MISSING FIRMWARES"
for firm in $(cat firmwares | grep "/lib" | awk '{print $5}' | sed -e 's/\// /g' | awk '{print $4}' | uniq)
do
  echo -e "\n [+] Descargando $url$firm"
  wget $url$firm &> /dev/null
done

cp ./*.bin /lib/firmware/i915/

echo "[+] Complete "
echo "[+] Please execute sudo update-initramfs -u"

