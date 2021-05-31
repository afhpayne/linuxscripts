#!/bin/bash

sudo_user=$SUDO_USER
gpu_check=$(command -v nvidia-smi)
if [ -z $gpu_check ]
then
    printf "nvidia not found...\n"
else
    printf "nvidia found... $gpu_check \n"
    expect /home/$SUDO_USER/Github/linuxscripts/slackware/nvidia_expect.exp $sudo_user
fi

sh /home/$SUDO_USER/Nextcloud/Installers/VirtualBox*.run \
&&
flatpak update -y \
&&
flatpak remove --unused \
&&
reboot

exit 1

