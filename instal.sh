#!/bin/bash
clear

echo "######################################"
echo  AZIGAMING404
echo ===================================
echo
echo "Ini adalah tools auto instal php"
echo "ini adalah tools termux alternatif"
echo
echo ===================================
echo
echo "pembuat : azigaming404"
echo "tools auto instal php"
echo
echo =====================================
echo
echo 
echo "Menu instaler"
echo "1.instal php"
echo "2.instal mariadb"
echo "3.instal Composer"
echo "4.create project laravel"
echo ======================================
echo
echo "Sebelum membuat project laravel"
echo "diharapkan untuk menginstal php"
echo "dan composer"
echo
echo
echo
read -p "pilih nomor :" pil

if [ $pil = '1' ]
then
clear

apt update && apt upgrade
pkg install php
fi

if [ $pil = '2' ]
then
clear

pkg install mariadb
fi

if [ $pil = '3' ]
then
clear

php -r "copy('https://getcomposer.org/installer', 'composer-setup.php');"
php -r "if (hash_file('sha384', 'composer-setup.php') === '55ce33d7678c5a611085589f1f3ddf8b3c52d662cd01d4ba75c0ee0459970c2200a51f492d557530c71c15d8dba01eae') { echo 'Installer verified'; } else { echo 'Installer corrupt'; unlink('composer-setup.php'); } echo PHP_EOL;"
php composer-setup.php
php -r "unlink('composer-setup.php');"
fi

if [ $pil = '4' ]
then
clear

composer create-project laravel/laravel project-baru
fi
