#!/bin/bash
#=================================================
# Description: DIY script
# Lisence: MIT
# Author: eSirPlayground
# Youtube Channel: https://goo.gl/fvkdwm 
#=================================================
#1. Modify default IP
sed -i 's|192.168.1.1|192.168.100.1|g' openwrt/package/base-files/files/bin/config_generate

#2. Clear the login password
sed -i 's|root::0:0:99999:7:::|root:$1$sg..YQiZ$PT.gnTU18zJE0/TRodj/K1:20039:0:99999:7:::|g' package/lean/default-settings/files/zzz-default-settings

#3. Replace with JerryKuKu’s Argon
#rm openwrt/package/lean/luci-theme-argon -rf

