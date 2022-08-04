#!/bin/bash

echo "Atualizando Servidor"

apt-get update -y
apt-get upgrade -y

echo "Instalando apache2 e unzip e wget"

apt-get install apache2 -y
apt-get install unzip -y
apt-get install wget -y


echo "Baixando arquivos do site na pasta /tmp"

cd /tmp
wget https://github.com/denilsonbonatti/linux-site-dio/archive/refs/heads/main.zip
unzip main.zip 

echo "Copiando arquivos da pasta baixada para o diretório do apache"
cd linux-site-dio
cp -R * /var/www/html/



