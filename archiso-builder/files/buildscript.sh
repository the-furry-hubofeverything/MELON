#!/bin/sh

#Placing terminal to the starting folder
cd /root/

#Ask the user where are the archiso files
echo "Type the repo URL where the archiso files are, followed by [ENTER]"
read repository

#Clone the lhos repo
git clone $repository

#Go to this new working folder
cd $(ls|grep -Ev 'buildscript.sh')

#Get Multimc and make repo
git clone https://aur.archlinux.org/multimc5.git AUR/multimc
sh -c "cd 'AUR/multimc' && makepkg"
repo-add AUR/AUR.db.tar.gz AUR/multimc/multimc5*.zst

#Run the script to build the ISO
mkarchiso -v -o out/ .

#Move the final ISO to /tmp to be accessible from the host
mv out/*.iso /tmp
