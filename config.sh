tcppath=$(which tcpdump)
chmod +s "$tcppath"
chmod 777 tracescript.sh
cd /var/www
chown -R www-data:www-data html
