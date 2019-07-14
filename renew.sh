#!/bin/bash

sudo ufw allow 80/tcp

sudo certbot renew
sudo service restart nginx

sudo ufw delete allow 80/tcp
