#!/bin/bash

if [ -z $1 ]; then
    echo "Parameter 1 is empty"
    exit 0
fi
if [ ! -d k ]; then
    mkdir k
fi

# Grow the image by 400M
dd if=/dev/zero bs=1M count=400 >> $1
sector=`/sbin/fdisk -l $1 |grep Linux | gawk '{print $2}'`

# delete the second partition, and create a new one with bigger size
echo -e "d\n2\nn\np\n2\n$sector\n\nw" | sudo fdisk $1

offset=$((sector*512))
sudo mount $1 -o offset=$offset k

sudo resize2fs /dev/loop0

sudo cp *install.sh k/root/
sudo cp *.png k/root/
sudo cp *.py  k/root/
sudo umount k
