#!/bin/bash
#=================================================
# Description: DIY script
# Lisence: MIT
# Author: eSirPlayground
# Youtube Channel: https://goo.gl/fvkdwm 
#=================================================
#1. Modify default IP
sed -i 's/192.168.1.1/192.168.50.2/g' openwrt/package/base-files/files/bin/config_generate
#2. enable 128M NAND flash for wndr4300
sed -i s/'23552k(ubi),25600k@0x6c0000(firmware)'/'120832k(ubi),122880k@0x6c0000(firmware)'/ openwrt/target/linux/ar71xx/image/legacy.mk
