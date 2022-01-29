#!/bin/bash

gpu_check=$(type nvidia-smi 2>&1)

if [[ $gpu_check = *"nvidia"* ]]
then
sh ~/Nextcloud/Installers/N*
expect "Are you sure you want to continue?"
send --
fi

