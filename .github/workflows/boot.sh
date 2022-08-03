#!/bin/bash
echo "Welcome to the Auto-Scaing Demo from Dustin Godfery at Go Cloud Engineers! Hit refresh a few times to see it in action!"

ipaddress=$( ip address show | grep "eth0" | grep "inet" | awk '{ print $2 }' )

sudo apt update -y
sudo apt install apache2 -y
sudo service apache2 start

echo $ipaddress


sudo echo $ipaddress > /var/www/html/index.html
sudo echo "Welcome! This is the Auto-Scaing Demo from Dustin Godfery at Go Cloud Engineers! Hit refresh a few times to see it in action!" >> /var/www/html/index.html
sudo chmod 755 /var/www/html/index.html




sudo chown -R $USER /var/www

echo "Done"

