#!/bin/sh

apt-get update
apt-get -y upgrade

apt-get -y install python3-opencv python3-willow python3-pyaudio python3-sklearn swi-prolog vim
apt-get -y autoremove
apt clean
apt-get -y install python3-picamera2 python3-torch python3-torchvision python3-soundfile
apt clean
pip3 install python_speech_features pyswip sounddevice hmmlearn
pip3 install tensorboard

