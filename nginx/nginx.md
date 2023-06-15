<h1 align="center">
  <img src="https://nginx.org/nginx.png" alt="Nginx Logo"><br>
  Nginx Configuration for Node.js
</h1>

<p align="center">
This is a simple configuration for Nginx to use with Node.js applications.

## Table of Contents
show table of contents template
- [Table of Contents](#table-of-contents)
- [Prerequisites](#prerequisites)
- [Installation](#installation)
- [Usage](#usage)
- [Do it automatically](#do-it-automatically)

## Prerequisites

- [Cloud / Local Server](#) Ubuntu 20.04 LTS
- [Node.js](https://nodejs.org/en/) >= 18.0.0
- [Nginx](https://nginx.org/en/) >= 1.21.0
- [Certbot](https://certbot.eff.org/) >= 1.17.0

## Installation

Step 1: Install Nginx

```sh
sudo apt update && sudo apt upgrade -y
sudo apt install nginx
```

Step 2: Install Node.js
> Follow the instructions on the [How to install Node.js](https://www.digitalocean.com/community/tutorials/how-to-install-node-js-on-ubuntu-20-04) website.

Step 3: Install Certbot

```sh
sudo apt install certbot python3-certbot-nginx
```

## Usage

Step 1: Clone this repository

```sh
git clone <repo-url>
```

Step 2: Copy the `default` file to nginx and replace the `server_name` and `root` values with your own.

```sh
sudo cp default /etc/nginx/sites-available/default
```
configure the nginx server block file. you can find the file in the `nginx` folder. copy the file to `/etc/nginx/sites-available` folder. and replace the `server_name` and `root` values with your own and add your domain name to the `server_name` field.

Step 3: Restart Nginx

```sh
sudo systemctl restart nginx
```
restart nginx service to reflect the changes.

Step 4: Generate SSL certificate

```sh
sudo certbot certonly --nginx
```
it will ask you to enter your email address and accept the terms and conditions. after that it will ask you to choose the domain name. enter the domain name you want to use with this server. and it will generate the certificate for you.

Step 5: Restart Nginx

```sh
sudo systemctl restart nginx
```

## Do it automatically

Step 1: Clone this repository

```sh
git clone <repo-url>
```

Step 2: Run the `setup.sh` file with domain name as argument

```sh
sudo ./setup.sh <domain-name>
```

Take a cup of coffee and relax. It will do everything for you.