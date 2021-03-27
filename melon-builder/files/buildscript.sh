#!/bin/bash

#Placing terminal to the starting folder
cd /root/

#Copy the archiso files
cp -r /mnt/build/ .

#Go to this new working folder
cd $(ls|grep -Ev 'buildscript.sh')

#Get MultiMC
mkdir -p airootfs/home/melon/MultiMC/
wget https://files.multimc.org/downloads/mmc-stable-lin64.tar.gz
tar -xvf mmc-stable-lin64.tar.gz -C airootfs/home/melon/ 
chmod +x airootfs/home/melon/MultiMC/MultiMC

#Run the script to build the ISO
mkarchiso -v -o out/ .

#Create folder for output ISO
mkdir /mnt/build/out

#Move the final ISO to /mnt/build to be accessible from the host
mv out/*.iso /mnt/build/out
