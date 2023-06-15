sudo apt update && sudo apt upgrade -y
sudo apt install nginx -y

cd ~
curl -sL https://deb.nodesource.com/setup_18.x -o /tmp/nodesource_setup.sh
sudo bash /tmp/nodesource_setup.sh
sudo apt install nodejs -y
node -v

sudo apt install npm -y
npm -v

sudo apt install certbot python3-certbot-nginx
sudo certbot certonly --nginx -d $1 # domain name

sudo systemctl restart nginx