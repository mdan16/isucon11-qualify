cd $(dirname $0)

cp nginx.conf /etc/nginx/nginx.conf
systemctl reload nginx