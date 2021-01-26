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
echo "Installation du server APACHE"
sleep "4"
clear

sudo apt install apache2 -y

clear
echo "Configuration du server APACHE"
sleep "4"
clear

cd /var/www/html && /var/www/html


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

if confirm "ATTENTION : Avez-vous vue l'information : HTTP request sent, awaiting response... 200 OK ? "; then

clear
echo "Enregistrement du code connected."
sleep "4"

cat ./check_apache.html


clear
echo "Installation de APACHE TERMINER"
sleep "4"
clear

else
fi
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

if confirm "INFORMATION : Vous les vous installer un server php ? "; then

clear
echo "Installation de PHP"
sleep "4"
clear

sudo apt install php -y

clear
echo "Configuration de PHP"
sleep "2"
clear

sudo rm index.html && echo "<?php echo "TEST WORLD-TECK STUDIO"; ?>" > /var/www/html/index.php

sudo service apache2 restart

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


if confirm "ATTENTION : Vérifier si le serveur php : IP DE VOTRE RASPBERRY/index.html "; then

clear
echo "Installation de PHP TERMINER"
sleep "6"
clear

else

fi

fi
# ------------------------------------------------------------

clear
echo "Installation du serveur MYSQL"
sleep "6"
clear

sudo apt install mariadb-server php-mysql -y && sudo service apache2 restart

# ------------------------------------------------------------


clear
echo "Configuration de l'utilisateur du serveur MYSQL"
sleep "4"


echo "-------------------------------------------------"
sleep "4"


echo "sudo mysql --user=root --password"
sleep "4"


echo "create user admin@localhost identified by 'your_password'"
sleep "4"



echo "create user admin@localhost identified by 'your_password'grant all privileges on *.* to admin@localhost;"
sleep "4"



echo "FLUSH PRIVILEGES;"
sleep "4"



echo "exit;"
sleep "4"


sudo mysql_secure_installation



clear
echo "INSTALLATION DU SQL TERMINER"
sleep "6"
clear

else

clear
echo "Vous avez rencontrez un probléme"
sleep "2"


echo "RDV sur la vidéo youtube : World-teck STUDIO"
sleep "2"


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

# ------------------------------------------------------------

clear
echo "Installation du serveur PHP"
sleep "6"
clear

sudo apt install phpmyadmin -y && sudo phpenmod mysqli && sudo service apache2 restart


onfirm()
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

if confirm "ATTENTION : RDV sur ip de votre raspberry/phpmyadmin : Voyer-vous la page phpmyadmin ? "; then


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

clear
echo "Vous avez rencontrez un probléme"
sleep "2"


echo "Correction du probléme ..."
sleep "6"

sudo ln -s /usr/share/phpmyadmin /var/www/html/phpmyadmin

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
