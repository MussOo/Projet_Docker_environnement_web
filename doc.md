Le fichier DOCKER contien la configuration du php.ini, default.conf.

Pour pouvoir creer votre fichier d'environnement. Il faudra placer le fichier .sh dans votre fichier de config qui ce situe dans votre projet.


Apres la creation du fichier .env, vous pouvez taper dans le terminal : (à la racine tu projet)

## Docker-compose up ## 

Cela vous permettra de lancé l'environnement. Oublié pas d'ouvrir le software docker avant de taper cette commande.

Ensuite il vous suffira tout simplement de lancé votre navigateur, 

si vous voulez acceder a Apache : localhost:[PortChoisi]

si vous voulez acceder a PhpMyAdmin : localhost:[PortChoisi]

Et pour finir lors de la configuration de votre fichier config.php qui contien les valeurs liees a la base de donnée.

En temps que nom d'utilisateur et mot de passe vous allez rentré: 
nom utilisateur: root
mot de passe: root

En ce qui concerne le localhost vous devez rentré : 'db'

cela vous donnera:

<?php 
	define('DB_HOST',    'db');    
	define('DB_NAME',    'myDb');     
	define('DB_USER',    'root');               
	define('DB_PWD',     'root');             
?>


Pour executé le docker-compose retourné dans le repertoire ou il se trouve, puis si vous voulez lancer le conteneur pour la premiere fois, vous allez utiliser:

docker-compose up


Si vous voulez reinstaller le conteneur avec d'autre valeur dans le fichier .env vous allez effectué:

docker-compose down && docker-compose up -d

