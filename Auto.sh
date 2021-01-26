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


clear
echo "Installation de MYSQL"
sleep "4"
clear

sudo apt install mariadb-server && sudo mysql_secure_installation

# ------------------------------------------------------------


clear
echo "configuration de MYSQL"
sleep "4"
clear

clear
echo "CREATE DATABASE database;"
sleep "2"

echo "CREATE USER 'user'@'localhost' IDENTIFIED BY 'password';"
sleep "2"

echo "GRANT ALL PRIVILEGES ON exampledb.* TO 'user'@'localhost';"
sleep "2"

echo "FLUSH PRIVILEGES;"
sleep "2"


sudo mysql -u root -p

clear
echo "Installation du SQL TERMINER"
sleep "4"
clear

# ------------------------------------------------------------

clear
echo "Installation du server APACHE"
sleep "4"
clear

sudo apt install apache2

clear
echo "Configuration du server APACHE"
sleep "4"
clear

sudo chown -R pi:www-data /var/www/html/ && sudo chmod -R 770 /var/www/html/


# ------------------------------------------------------------

clear
echo "Vérification du fonctionnement du APACHE"
sleep "4"
clear

wget -O check_apache.html http://127.0.0.1

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

clear
echo "Enregistrement du code connected."
sleep "4"

cat ./check_apache.html


clear
echo "Installation de APACHE TERMINER"
sleep "4"
clear

# ------------------------------------------------------------


clear
echo "Installation de PHP"
sleep "4"
clear

sudo apt install php php-mbstring

clear
echo "Configuration de PHP"
sleep "2"
clear

sudo rm /var/www/html/index.html && echo "<?php phpinfo ();?>" > /var/www/html/index.php

clear
echo "Installation de PHP TERMINER"
sleep "4"
clear


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

if confirm "ATTENTION : Vérifier si le sql fonctionne : IP DE VOTRE RASPBERRY/phpmyadmin "; then


clear
echo "Redémarrage de tous les services"
sleep "4"
clear

/etc/init.d/apache2 restart

# ------------------------------------------------------------


clear
echo "Installation TERMINER"
sleep "4"
clear

# ------------------------------------------------------------

clear
echo "Merci d'avoir suivi le tuto..."
echo "== YOUTUBE: world-teck STUDIO =="
echo "== TWITCH: WorldTeck_studio_ =="
sleep "6"
clear
echo "Redemarrage dans 6"
sleep "1"
clear
echo "Redemarrage dans 5"
sleep "1"
clear
echo "Redemarrage dans 4"
sleep "1"
clear
echo "Redemarrage dans 3"
sleep "1"
clear
echo "Redemarrage dans 2"
sleep "1"
clear
echo "Redemarrage dans 1"
sleep "1"
clear
echo "...REBOOT..."
sleep "4"
sudo reboot

else

sudo systemctl reload apache2

clear
echo "Merci d'avoir suivi le tuto..."
echo "== YOUTUBE: world-teck STUDIO =="
echo "== TWITCH: WorldTeck_studio_ =="
sleep "6"
clear
echo "Redemarrage dans 6"
sleep "1"
clear
echo "Redemarrage dans 5"
sleep "1"
clear
echo "Redemarrage dans 4"
sleep "1"
clear
echo "Redemarrage dans 3"
sleep "1"
clear
echo "Redemarrage dans 2"
sleep "1"
clear
echo "Redemarrage dans 1"
sleep "1"
clear
echo "...REBOOT..."
sleep "4"
sudo reboot

fi


else
fi
