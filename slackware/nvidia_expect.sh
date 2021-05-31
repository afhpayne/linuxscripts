#!/usr/bin/expect

set timeout 60

spawn /home/$SUDO_USER/Nextcloud/Installers/NVIDIA-Linux-x86_64-460.80.run

expect "Continue"

send "\r"

expect "Install"

send "\t\r"

expect "Would"

send "\t\r"

expect "Your"

send "\r"

expect EOF
