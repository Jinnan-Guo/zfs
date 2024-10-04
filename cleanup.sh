#! /bin/bash
#
sudo make uninstall; sudo ldconfig; sudo depmod

make clean

pkill zed

sudo modprobe -r zfs

lsmod | grep zfs

sudo depmod -a

sudo reboot
