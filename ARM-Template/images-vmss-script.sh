apt update -y
apt install nginx -y
cd /var/www/html
rm index*.html
MYIP=$(hostname -i)
echo "<h1>Hello from Image Server [$MYIP]</h1>" > index.html
systemctl enable nginx
wget https://github.com/mahendra-shinde/azure-app-gateway-demo/raw/main/images/sun.png
wget https://github.com/mahendra-shinde/azure-app-gateway-demo/raw/main/images/moon.png
wget https://github.com/mahendra-shinde/azure-app-gateway-demo/raw/main/images/earth.png