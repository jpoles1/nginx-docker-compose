docker exec -it certbot-nginx bash -c 'certbot renew --authenticator standalone --installer nginx --pre-hook "nginx -s stop"'
./nginx-restart.sh