#! /bin/bash 

#Mostramos las targetas de red conectadas
sudo iwconfig

#-n para evitar el salto de linea automatico
echo -n "Cual es tu targeta de red: "
read targetaRed

#ponemos la targeta de red en modo monitor
sudo airmon-ng start $targetaRed

sudo iwconfig


# Construimos el nombre de la interfaz en modo monitor
monitorInterface="${tarjetaRed}mon"

#prueba
echo "Targeta de red --> $monitorInterface"

#quitamos el modo monitor de la antena
sudo airmon-ng stop wlp4s0mon
