#!/bin/sh

echo '***********************************'
echo 'Flash FPGA firmware service START'
echo '***********************************'

modprobe spidev
cd /usr/share/FPGA_firmware/
./afloader -d /dev/spidev2.0 -j ./nxbox-22.11.01.jed

echo '***********************************'
echo 'Flash FPGA firmware service Finish, Rebooting the system!!!'
echo 'This would take a while.'
echo '***********************************'
