#!/bin/sh

mv /root/pku*.png /home/student/
mv /root/*.py /home/student/
cp /root/pip_install.sh /home/student

su - student -c "/home/student/pip_install.sh work"
rm /home/student/pip_install.sh -f
