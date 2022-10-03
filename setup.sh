#!/bin/bash -e

SSLDIR=./data/nginx/ssl
mkdir -p $SSLDIR
echo "Create self-signed cert..."
openssl req -x509 -sha256 -nodes -days 365 -newkey rsa:2048 -subj "/C=US/ST=IA/L=Urbabdale/O=SAI/CN=selfsigned.localhost" -keyout $SSLDIR/privkey.pem -out $SSLDIR/fullchain.pem
