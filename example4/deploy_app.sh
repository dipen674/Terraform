#!/bin/bash
sudo apt install apache2 wget unzip -y
sudo systemctl start apache2
sudo systemctl enable apache2
cd /tmp/
sudo wget https://www.tooplate.com/zip-templates/2129_crispy_kitchen.zip
unzip -o 2129_crispy_kitchen.zip
sudo cp -r 2129_crispy_kitchen/* /var/www/html/
sudo systemctl restart apache2
