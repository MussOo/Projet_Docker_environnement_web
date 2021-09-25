#!/bin/bash

echo -e ""
echo -e "" 
echo -e ""
echo -e ""
echo -e ""


echo -e ""
echo -e ""
echo -e "Verifier que install.sh est a la racine du projet"
echo -e "Verfiez que tout les fichier necessaire au bon fonctionnement de docker sont present dans votre Projet"
echo -e ""
echo -e "########################## APACHE ##########################\n\n" 

echo -e "# Emplacement du projet (par défaut = ./) :" 

read EmplacementProjet

EmplacementProjet=${EmplacementProjet:-./}

echo -e "\n# Entrez le chemin du dossier ou se trouve default.conf (par défaut = ./DOCKER/vhosts):" 

read Emplacementvhosts

Emplacementvhosts=${Emplacementvhosts:-./DOCKER/vhosts}

echo -e "\n# Entrez le chemin du dossier ou se trouve php.ini (par défaut = ./DOCKER/php):" 

read Emplacementphpini

Emplacementphpini=${Emplacementphpini:-./DOCKER/php}


echo -e "########################## BASE DE DONNEE ##########################\n\n" 
echo -e ""
echo -e ""
echo -e "Verifier que votre base de donnée ce situe dans le dossier config"
echo -e "Verifier egalement que vous possedez qu'une seul base de donnée"

echo -e ""
echo -e ""
echo -e "### BDD ###\n" 

echo -e "\nEntrez le nom que vous souhaitez pour la BDD:" 

read MYSQL_DATABASE

MYSQL_DATABASE=${MYSQL_DATABASE:-mydb}


echo -e "### file.sql ###\n" 

echo -e "\n# Entrez le chemin du dossier ou se trouve votre Fichier .sql (par défaut = ./config):" 

read LOCATE_BDD

LOCATE_BDD=${LOCATE_BDD:-./config}




echo -e "########################## PORTS RESEAU ##########################\n\n" 

echo -e "\n# Inserer votre port (APACHE) (par défaut = 8001):" 

read PORT_APACHE

PORT_APACHE=${PORT_APACHE:-8001}


echo -e "\n# PORT MYSQL (par défaut = 3306):" 

read PORT_MYSQL

PORT_MYSQL=${PORT_MYSQL:-3306}


echo -e "\n# PORT PMA (PhpMyAdmin) (par défaut = 8000):" 

read PORT_PMA

PORT_PMA=${PORT_PMA:-8000}



echo  '########################## APACHE ##########################' > .env

echo  "" >> .env
echo  "" >> .env
echo  '# Emplacement du projet' >>.env
echo  "DOCUMENT_ROOT=$EmplacementProjet" >> .env

echo  "" >> .env
echo  '# Emplacement du fichier default.conf ' >>.env
echo  "VHOSTS_DIR=$Emplacementvhosts" >> .env

echo  "" >> .env
echo  '# Emplacement du fichier php.ini' >>.env
echo  "PHP_INI=$Emplacementphpini" >> .env

echo  "" >> .env
echo  "" >> .env

echo  '########################## BASE DE DONNEE ##########################' >>.env
echo  "" >> .env

echo  "MYSQL_DATABASE=$MYSQL_DATABASE" >> .env

echo  "" >> .env
echo  "LOCATE_BDD=$LOCATE_BDD" >> .env

echo  "" >> .env
echo  "" >> .env

echo  '########################## PORTS RESEAU ##########################' >>.env

echo  "" >> .env
echo  "" >> .env
echo  '# Inserer votre port (APACHE)' >>.env

echo  "PORT_APACHE=$PORT_APACHE" >> .env


echo  "" >> .env
echo  '# Inserer votre port (MYSQL) (par default = 3306)' >>.env
echo  "PORT_MYSQL=$PORT_MYSQL" >> .env

echo  "" >> .env
echo  '# Inserer votre port (PhpMyAdmin)' >>.env
echo  "PORT_PMA=$PORT_PMA" >> .env


docker-compose up