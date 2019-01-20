# Nginx + Certbot w/ Docker-Compose

### Preparation:
- Create/copy your `nginx.conf` file into the project root directory. 
  - See [example config](https://github.com/jpoles1/nginx-docker-compose/blob/master/example.nginx.conf).
- Run: `touch cron.log`

### Container Control:

To start the nginx container: `docker-compose up -d`

To stop the nginx container: `docker-compose down`

### Helper Scripts:

To reload the config after editing `nginx.conf`: run `./nginx-restart.sh`

To create an HTTPS certificate: run `./certbot-add.sh` and follow the prompts.
  - This should be run after creating the appropriate entry in your `nginx.conf` file.
  - Note: This may freeze at the end, feel free to Ctrl + C, and the certificates should still remain installed properly.

To manually renew certificates: run `./certbot-renew.sh`
  - Certificates should be automatically renewed, with checks run daily via crontab.
