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

sudo wget -O check_apache.html http://127.0.0.1
{
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

echo "TEST DU FICHIER HTML : WORLD-TECK STUDIO ---> OK<br>" > /var/www/html/index.html

clear
{
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

if confirm "INFORMATION : Avez-vous access: IP du raspberry/index.html ? "; then

clear
echo "Enregistrement."
sleep "4"
cat ./check_apache.html

clear
echo "Installation de APACHE TERMINER"
sleep "4"
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
}


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
}
# ------------------------------------------------------------
{
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

if confirm "INFORMATION : Vous les vous installer le serveur PHP"; then

clear
echo "Installation de PHP"
sleep "4"
clear

sudo apt install php -y

clear
echo "Configuration de PHP"
sleep "2"
clear

sudo rm index.html && mv ~/AUTOWEB/index.php /var/www/html/

sudo service apache2 restart


{
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

if confirm "INFORMATION : Avez-vous access: IP du raspberry/index.php "; then

sudo rm index.php

else

clear
echo "Vous avez rencontrez un probléme"
sleep "2"


echo "RDV sur la vidéo youtube : World-teck STUDIO"
sleep "6"


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
}



else
echo "Configuration de PHP"
fi
}

# ------------------------------------------------------------

clear
echo "Installation du serveur MYSQL"
sleep "6"
clear

sudo apt install mariadb-server php-mysql -y && sudo service apache2 restart

# ------------------------------------------------------------

clear
echo "Configuration de la sécurisation du serveur MYSQL"
sleep "4"
echo "-------------------------------------------------"
sleep "4"

sudo mysql_secure_installation

# ------------------------------------------------------------

clear
echo "INSTALLATION DU SQL TERMINER"
sleep "4"
clear

# ------------------------------------------------------------

clear
echo "Installation de PHP MY ADMIN"
sleep "6"
clear

sudo apt install phpmyadmin -y


sudo phpenmod mysqli && sudo service apache2 restart


{
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

if confirm "INFORMATION : Avez-vous access: IP du raspberry/phpmyadmin"; then


ls -lh /var/www/ && sudo chown -R pi:www-data /var/www/html/ && sudo chmod -R 770 /var/www/html/ && ls -lh /var/www/


else

sudo ln -s /usr/share/phpmyadmin /var/www/html/phpmyadmin


fi
}
{
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

if confirm "INFORMATION : Vous les vous ajouter un autre utilisateur et base de donnée SQL "; then



clear
echo "Configuration de l'utilisateur du serveur MYSQL"
sleep "4"
echo "-------------------------------------------------"
sleep "4"

sudo mysql --user=root --password


echo "create user admin@localhost identified by 'your_password';"
sleep "2"



echo "grant all privileges on *.* to admin@localhost;"
sleep "2"



echo "FLUSH PRIVILEGES;"
sleep "2"



echo "exit;"
sleep "2"

{
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

if confirm "INFORMATION : Avez-vous access a la base de donnée SQL "; then
clear
echo "INSTALLATION COMPLET"
sleep "4"


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
}


else

clear
echo "INSTALLATION COMPLET"
sleep "4"


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
}
