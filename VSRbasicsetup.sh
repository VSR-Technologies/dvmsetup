#!/bin/bash
# VSR TECHNOLOGIES
# DO NOT MODIFY ANYTHING IN THIS FILE
sudo apt install cmake
sudo apt update
git clone https://github.com/DVMProject/dvmhost.git
cd dvmhost
mkdir build
cd build
cmake ..
make
make strip
make tarball
sudo tar xvzf dvmhost_R04Gxx_<arch>.tar.gz -C /opt
sudo make old_install
cd
sudo rm -r dvmhost
git clone https://github.com/VSR-Technologies/DVMsystemd.git
cd DVMsystemd
cd systemctl
sudo mv ./P25.service /usr/bin/systemctl
cd
sudo systemctl enable P25.service
echo INSTALL SUCCESS
sudo reboot
