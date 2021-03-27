#This was based on https://github.com/nlhomme/archiso-builder

FROM archlinux

#Install git and archiso
RUN pacman -Sy git archiso wget --noconfirm

#Copy the build script and allow him to be executed
COPY files/buildscript.sh root/

#Place the terminal in the home folder
RUN ["chmod", "+x", "root/buildscript.sh"]

ENTRYPOINT ["./root/buildscript.sh"]

