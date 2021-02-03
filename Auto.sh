#!/bin/bash

clear
sleep "1"
echo "== SCRIPT DE WORLD-TECK STUDIO == "
sleep "1"
echo "== YOUTUBE: World-teck STUDIO =="
sleep "1"
echo "== TWITCH: WorldTeck_studio_ =="
sleep "1"
echo "------------------------------"
echo "== Script : Serveur HTTP/PHP + SQL AUTO =="
sleep "1"
echo "== Version du script 2.0 (FINAL) =="
echo "------------------------------"
sleep "8"
clear

# ------------------------------------------------------------


echo "Mise à jour du Raspberry et de Raspbian"
sleep "4"
clear

sudo apt update -y && sudo apt upgrade -y

clear
echo "Mise à jour TERMINER"
sleep "4"
clear


# ------------------------------------------------------------


echo "Installation du serveur APACHE + HTML"
sleep "4"
clear

sudo apt install apache2 -y

clear
echo "Configuration du serveur 'APACHE + HTML'"
sleep "4"
clear

cd /var/www/html && /var/www/html


# ------------------------------------------------------------

clear
echo "Vérification du fonctionnement du serveur 'APACHE + HTML'"
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

if confirm "ATTENTION : Avez-vous vu l'information suivante : HTTP request sent, awaiting response... 200 OK ? "; then

sudo rm -fv index.html && sudo mv ~/AUTOWEB/index.html /var/www/html/

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

if confirm "INFORMATION : Avez-vous access à la page HTML via : IP de votre raspberry/index.html ? "; then

clear
echo "Enregistrement."
sleep "4"
cat ./check_apache.html

clear
echo "Installation du serveur APACHE et HTML 'TERMINER'"
sleep "4"
clear

else

clear
echo "Vous avez rencontré un problème"
sleep "2"


echo "RDV sur la vidéo youtube : World-teck STUDIO"
sleep "2"


sleep "6"
clear
echo "Redémarrage dans 6"
sleep "1"
clear
echo "Redémarrage dans 5"
sleep "1"
clear
echo "Redémarrage dans 4"
sleep "1"
clear
echo "Redémarrage dans 3"
sleep "1"
clear
echo "Redémarrage dans 2"
sleep "1"
clear
echo "Redémarrage dans 1"
sleep "1"
clear
echo "...REBOOT..."
sleep "4"

sudo reboot
fi
}


else

clear
echo "Vous avez rencontré un problème"
sleep "2"


echo "RDV sur la vidéo youtube : World-teck STUDIO"
sleep "2"


sleep "6"
clear
echo "Redémarrage dans 6"
sleep "1"
clear
echo "Redémarrage dans 5"
sleep "1"
clear
echo "Redémarrage dans 4"
sleep "1"
clear
echo "Redémarrage dans 3"
sleep "1"
clear
echo "Redémarrage dans 2"
sleep "1"
clear
echo "Redémarrage dans 1"
sleep "1"
clear
echo "...REBOOT..."
sleep "4"

sudo reboot

fi
}
# ------------------------------------------------------------
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

if confirm "INFORMATION : Vous les vous installez le serveur PHP"; then

clear
echo "Installation du serverur 'PHP'"
sleep "4"
clear

sudo apt install php -y

clear
echo "Configuration du serveur PHP"
sleep "2"
clear

sudo mv ~/AUTOWEB/index.php /var/www/html/

sudo service apache2 restart
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

if confirm "INFORMATION : Avez-vous access à la page PHP via : IP du raspberry/index.php "; then

echo "OK"
else

clear
echo "Vous avez rencontré un problème"
sleep "2"


echo "RDV sur la vidéo youtube : World-teck STUDIO"
sleep "6"


sleep "6"
clear
echo "Redémarrage dans 6"
sleep "1"
clear
echo "Redémarrage dans 5"
sleep "1"
clear
echo "Redémarrage dans 4"
sleep "1"
clear
echo "Redémarrage dans 3"
sleep "1"
clear
echo "Redémarrage dans 2"
sleep "1"
clear
echo "Redémarrage dans 1"
sleep "1"
clear
echo "...REBOOT..."
sleep "4"

sudo reboot


fi
}



else
echo "Installation du serveur MYSQL"
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
echo "Configuration de la sécurisation du serveur 'SQL'"
sleep "4"
echo "-------------------------------------------------"
sleep "4"

sudo mysql_secure_installation

# ------------------------------------------------------------

clear
echo "Installation du serveur 'SQL' TERMINER"
sleep "4"
clear

# ------------------------------------------------------------

clear
echo "Installation de 'Phpmyadmin'"
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
clear
if confirm "INFORMATION :  Avez-vous access à la page Phpmyadmin via : IP du raspberry/phpmyadmin"; then


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
clear
if confirm "INFORMATION : Vous les vous ajoutez un utilisateur MYSQL "; then



clear
echo "Configuration de l'utilisateur du serveur MYSQL"
sleep "4"
echo "-------------------------------------------------"
sleep "2"


echo "create user admin@localhost identified by 'your_password';"
sleep "2"



echo "grant all privileges on *.* to admin@localhost;"
sleep "2"



echo "FLUSH PRIVILEGES;"
sleep "2"



echo "exit;"
sleep "2"

sudo mysql --user=root --password

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
clear
if confirm "INFORMATION : Avez-vous access à la base de données 'MYSQL' "; then
clear
echo "Félicitation installation COMPLÈTE"
sleep "4"


clear
echo "Merci d'avoir suivi le tuto..."
echo "== YOUTUBE: world-teck STUDIO =="
echo "== TWITCH: WorldTeck_studio_ =="
sleep "6"
clear
echo "Redémarrage dans 6"
sleep "1"
clear
echo "Redémarrage dans 5"
sleep "1"
clear
echo "Redémarrage dans 4"
sleep "1"
clear
echo "Redémarrage dans 3"
sleep "1"
clear
echo "Redémarrage dans 2"
sleep "1"
clear
echo "Redémarrage dans 1"
sleep "1"
clear
echo "...REBOOT..."
sleep "4"
sudo reboot

else
clear
echo "Vous avez rencontré un problème"
sleep "2"


echo "RDV sur la vidéo youtube : World-teck STUDIO"
sleep "2"


sleep "6"
clear
echo "Redémarrage dans 6"
sleep "1"
clear
echo "Redémarrage dans 5"
sleep "1"
clear
echo "Redémarrage dans 4"
sleep "1"
clear
echo "Redémarrage dans 3"
sleep "1"
clear
echo "Redémarrage dans 2"
sleep "1"
clear
echo "Redémarrage dans 1"
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
echo "Redémarrage dans 6"
sleep "1"
clear
echo "Redémarrage dans 5"
sleep "1"
clear
echo "Redémarrage dans 4"
sleep "1"
clear
echo "Redémarrage dans 3"
sleep "1"
clear
echo "Redémarrage dans 2"
sleep "1"
clear
echo "Redémarrage dans 1"
sleep "1"
clear
echo "...REBOOT..."
sleep "4"
sudo reboot


fi
}
