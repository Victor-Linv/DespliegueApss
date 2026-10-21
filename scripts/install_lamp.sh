#!/bin/bash
set -ex

# Actualizar repositorios y paquetes
apt update
apt upgrade -y

# Apache
apt install apache2 -y

# PHP y módulo para Apache
apt install php libapache2-mod-php php-mysql -y

# MySQL
apt install mysql-server -y

# Reiniciar Apache
systemctl restart apache2