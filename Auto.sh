#!/bin/bash

clear
sleep "2"
echo "== SCRIPT DE WORLD-TECK STUDIO == "
echo "== YOUTUBE: world-teck STUDIO =="
echo "== TWITCH: WorldTeck_studio_ =="
echo "== Version du script 1.0 AUTOMATIQUE =="
sleep "6"
clear

# ------------------------------------------------------------


echo "Insalltation de serveur WEB"
sleep "4"
clear


# ------------------------------------------------------------


echo "Mise à jour du raspberry et de Raspbian"
sleep "4"
clear

sudo apt update -y && sudo apt upgrade -y && sudo apt update -y

clear
echo "Mise à jour TERMINER"
sleep "4"
clear



# ------------------------------------------------------------


echo "Création du serveur Apache"
sleep "4"
clear

sudo apt install apache2 -y
clear

echo "Création des dossiers"
sleep "2"
clear

sudo chown -R pi:www-data /var/www/html/ && sudo chmod -R 770 /var/www/html/

clear
echo "Test du serveur"
sleep "4"
clear

echo "Test dans 3"
sleep "1"
clear
echo "Test dans 2"
sleep "1"
clear
echo "Test dans 1"
sleep "1"
clear

wget -O verif_apache.html http://127.0.0.1

# ------------------------------------------------------------

confirm()
{
    read -r -p "${1} [y/N] " response

    case "$response" in
        [yY][eE][sS]|[yY]) 
            true
            ;;
        *)
            false
            ;;
    esac
}

if confirm "ATTENTION : Avez-vous vue l'information : Connecting to 127.0.0.1:80... connected. ? "; then

echo "Enregistrement du code connected."
sleep "4"
clear

cat ./verif_apache.html


# ------------------------------------------------------------

clear
echo "Installation de PHP sur la Raspberry"
sleep "4
"
clear
sudo apt install php php-mbstring -y


# ------------------------------------------------------------

clear
echo "Vérifier que PHP fonctionne"
sleep "4"
clear

sudo rm /var/www/html/index.html


# ------------------------------------------------------------


clear
echo "Création du fichier « index.php »"
sleep "4"
clear

echo "<?php phpinfo(); ?>" > /var/www/html/index.php


clear
echo "Serveur Apache et PHP termier »"
sleep "4"
clear



clear
echo "Création d'Une base de données MySQL »"
sleep "4"
clear

sudo apt install mariadb-server php-mysql -y


clear
echo "Verification du fonctionnement de MySQL »"
sleep "4"
clear
echo "DROP USER 'root'@'localhost'; »"
echo "CREATE USER 'root'@'localhost' IDENTIFIED BY 'password';»"
echo "GRANT ALL PRIVILEGES ON *.* TO 'root'@'localhost' WITH GRANT OPTION; »"

sudo mysql --user=root

clear
echo "MySQL INSTALLER »"
sleep "4"
clear

clear
echo "Installation de PHPMyAdmin »"
sleep "4"
clear

sudo apt install phpmyadmin -y && sudo phpenmod mysqli && sudo /etc/init.d/apache2 restart



confirm()
{
    read -r -p "${1} [y/N] " response

    case "$response" in
        [yY][eE][sS]|[yY]) 
            true
            ;;
        *)
            false
            ;;
    esac
}

if confirm "Pour vérifier le bon fonctionnement de PHPMyAdmin, en local ce sera « http://127.0.0.1/phpmyadmin"; then

echo "TERMINER"
sleep "4"
clear



else

echo "ERRORR"


fi




else

echo "ERROR"

fi
