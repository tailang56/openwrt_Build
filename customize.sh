#!/bin/bash
#===============================================
#1. Modify default IP
sed -i 's/192.168.1.1/192.168.0.1/g' package/base-files/files/bin/config_generate

#2. Custom settings
#sed -i 's?zstd$?zstd ucl upx\n$(curdir)/upx/compile := $(curdir)/ucl/compile?g' tools/Makefile
#sed -i 's/$(TARGET_DIR)) install/$(TARGET_DIR)) install --force-overwrite/' package/Makefile
sed -i 's/root:.*/root:$1$5d9MMt5l$/c9JXDXsuVvw8pYErrIpq\/:18336:0:99999:7:::/g' package/base-files/files/etc/shadow
sed -i 's/OpenWrt/OpenWrt by Sam/g' package/base-files/files/bin/config_generate
sed -i 's/\/bin\/ash/\/bin\/bash/' package/base-files/files/etc/passwd
git clone https://github.com/kenzok8/small-package package/small-package
