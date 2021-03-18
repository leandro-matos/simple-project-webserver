#!/bin/sh
apt update
apt install -y apache2 stress
sed -i '0,/Listen [0-9]*/s//Listen 443/' /etc/apache2/ports.conf
systemctl restart apache2
echo "<html><h1>Desafio Devops | Ton (Stone Co.)</h2></html>" > /var/www/html/index.html

mkdir -p /home/ubuntu/app && cd /home/ubuntu/app
git clone https://github.com/leandro-matos/dockernode .
curl -fsSL https://get.docker.com -o get-docker.sh && sh get-docker.sh
docker pull leandromatpereira/nodejs-image-leandro
docker run -p 8080:8080 -d leandromatpereira/nodejs-image-leandro