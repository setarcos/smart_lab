#!/bin/bash

boot='k'
if [ -z $1 ]; then
    echo "Parameter 1 is empty"
    exit 0
fi
if [ ! -d $boot ]; then
    mkdir $boot
fi

sector=`/sbin/fdisk -l $1 |grep Linux | gawk '{print $2}'`
offset=$((sector*512))
sudo mount $1 -o offset=$offset k
sudo  mount --bind /proc $boot/proc 
sudo  mount --bind /dev $boot/dev
sudo  mount --bind /dev/pts $boot/dev/pts
sudo  mount --bind /sys $boot/sys
sudo  chroot $boot
sudo umount $boot/proc
sudo umount $boot/dev/pts
sudo umount $boot/dev
sudo umount $boot/sys
sudo umount $boot
