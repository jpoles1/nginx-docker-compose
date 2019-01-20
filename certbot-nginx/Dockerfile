FROM nginx:latest

COPY crontab /etc/cron.d/certbot-cron
RUN chmod 0644 /etc/cron.d/certbot-cron
RUN touch /var/log/cron.log

RUN apt-get update
RUN apt-get -y install nano cron
RUN apt-get -y install certbot python-certbot-nginx

CMD nginx && cron && tail -f /var/log/cron.log
