# Drupal-Apache
 ## Script
 Descarregar el paquet wget per poder descarregar el drupal comprimit i empaquetat.
Desempaquetar i descomprimir el drupal, copiar el seu contingut al document root de apache /var/www/html
Donarli propietari i grup apache als fitxer i arxius del documentroot de apache.
Anar-hi al document root, canviar el nom del fitxer de configuració, llavors indicar les dades per que el drupal es pugui connectar amb la base de dades, això ho faig mitjançant la comanda sed que serveix per subtituir, i poder indicar el nom de la base de dades, el nom d’usuari, la contrasenya de l’usuari, host de la base de dades.
Finalment posant el Apache en primer pla.
