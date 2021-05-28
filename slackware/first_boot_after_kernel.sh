#!/bin/bash

gpu_check=$(command -v nvidia-smi)
if [ -z $gpu_check ]
then
    printf "nvidia not found...\n"
else
    printf "nvidia found... $gpu_check \n"
    sh ~/Nextcloud/Installers/NVIDIA*.run
fi

sh ~/Nextcloud/Installers/VirtualBox*.run \
&&
flatpak update -y \
&&
flatpak remove --unused \
&&

exit 0
