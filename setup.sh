#! /bin/bash

cd $(dirname $0)/go

echo "Build go file"
export PATH=/home/isucon/local/go/bin:/home/isucon/go/bin:$PATH
go build

cd ..

if [[ $(hostname) = *"11" ]]; then
    echo "Reload nginx config"
    cp nginx.conf /etc/nginx/nginx.conf
    systemctl reload nginx
fi
