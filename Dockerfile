FROM nginx

RUN apt update && apt install -y certbot python-certbot-nginx

COPY 30-certbot-init.sh docker-entrypoint.d/

