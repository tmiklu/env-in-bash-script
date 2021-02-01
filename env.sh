#!/bin/bash

#CUR_IP=$(wget -qO- https://ipecho.net/plain)
CUR_IP='192.169.1.2'
PUBLIC_IP='192.169.1.25'

#echo -e "${CUR_IP}"

if [ $CUR_IP != $PUBLIC_IP ]; then
	echo -e "IP was changed"
	sed -i 's/export CUR_IP=.*/export CUR_IP='${PUBLIC_IP}'/g' /root/.bashrc
	exec bash
else
	echo -e "IP's are same"
fi

