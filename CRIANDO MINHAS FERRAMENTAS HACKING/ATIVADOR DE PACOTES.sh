#!/bin/bash

echo "FALE SUA INTERFACE PARA ATIVAR MODO MONITOR: "

read interface

echo "ATIVANDO MODO MONITOR"

airmon-ng start $interface
airmon-ng check kill

echo "DESEJA CONFIGURAR O ENCAMINHAMENTO DE PACOTES ? S/N"
read ativo

if [ "$ativo" == "s" ]
then
	echo 1 > /proc/sys/net/ipv4/ip_forward
	
	iptables -t nat -o wlan0mon -A POSTROUTING -j MASQUERADE

else
then
	echo "TUDO BEM!"

fi

echo "TUDO PRONTO PARA USO!"
