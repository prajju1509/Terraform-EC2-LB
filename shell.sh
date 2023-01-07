#!/bin/bash
sudo apt install apache2 -y
sudo systemctl start apache2
sudo systemctl enable apache2
sudo echo "<h1>Hello from$(hostname)</h1>" > /var/www/html/index.html
