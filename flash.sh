#!/bin/sh
sudo dd if=$1 of=$2 bs=4M status=progress conv=fsync
sync
