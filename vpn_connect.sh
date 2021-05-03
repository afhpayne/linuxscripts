#!/bin/bash

printf "\033c"

config_dir="~/Documents/Nord_Configs/"

for config in "${config_dir}"*.ovpn
do
	echo "$(basename "${config}")"
done

printf "\nWhat number? "
read number
printf "\n(t)cp or (u)dp? "
read protocol

if [[ ${protocol} == "t" || ${protocol} == "T" ]]; then
	protocol=tcp
elif [[ ${protocol} == "u" || ${protocol} == "U"  ]]; then
	protocol=udp
else
	exit 1
fi

printf "\n"
echo "/usr/sbin/openvpn ${config_dir}us${number}.nordvpn.com.${protocol}.ovpn"
printf "\n"
exec /usr/sbin/openvpn ${config_dir}us${number}.nordvpn.com.${protocol}.ovpn
