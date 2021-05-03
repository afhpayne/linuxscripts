#!/bin/sh
# spectrwm_baraction.sh script for spectrwm status bar

SLEEP_SEC=5  # set bar_delay = 5 in /etc/spectrwm.conf

#loops forever outputting a line every SLEEP_SEC secs
while :; do
# Volume script:
    vol=$(amixer get Master | awk 'NR==6{print substr($5,2,3),$6}')
# VPN script:
    drop=$(dropbox.py status)
# VPN script:
    vpn=$(vpn_stat=$(nmcli connection show -active | awk $1 'NR==3{print $1}'); if [[ $vpn_stat = tun0 ]]; then echo YES; else echo NO; fi)
# ESSID script:
    essid=$(nmcli connection show -active | awk $1 'NR==2{print $1}')
# Wifi strength script:
    sig=$(cat /proc/net/wireless | awk 'NR==3{gsub(/[.]/,"",$3); print$3}')
# Battery percent script:
    batp=$(upower -i /org/freedesktop/UPower/devices/battery_BAT0 | awk '/percentage/ {print $2}')
# Battery remain script:
#    batr=$(bat_rem=$(upower -i /org/freedesktop/UPower/devices/battery_BAT0 | awk '/time/ {print $1,$2,$3,$4,$5}'); if [[ $bat_rem = *"empty:"* ]]; then echo $bat_rem; else echo Charging; fi)  
# Print the info to the bar:
        echo -e "Dropbox: $drop | Vol: $vol | VPN: $vpn | Wifi: $essid Sig: $sig% | Batt: $batp"
        sleep $SLEEP_SEC
done



## BARACTION DEFAULTS 
#SLEEP_SEC=5  # set bar_delay = 5 in /etc/spectrwm.conf
#COUNT=0
##loops forever outputting a line every SLEEP_SEC secs
#while :; do
# let COUNT=$COUNT+1
#        echo -e "          Hello World! $COUNT"
#        sleep $SLEEP_SEC
#done
