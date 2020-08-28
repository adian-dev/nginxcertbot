# Ngnix + Certbot docker image

Simple docker image that launchs certbot on first startup.

## Docker run usage:

```
docker run \
	--name nginxinstance \
	-p 80:80 \
	-p 443:443 \
	-v "/etc/letsencrypt:/etc/letsencrypt" \
	-v "/var/lib/letsencrypt:/var/lib/letsencrypt" \
	-v /etc/nginxconfigs:/etc/nginx/conf.d \
	-e EMAIL=example@example.com \
	-e DOMAINS=example.com,www.example.com \
	adiandev/nginxcertbot
```
## docker-compose

```
web:
  image: nginx
  volumes:
    - ./nginx.conf:/etc/nginx/nginx.conf:ro
	- /etc/letsencrypt:/etc/letsencrypt
	- /var/lib/letsencrypt:/var/lib/letsencrypt
  ports:
    - "80:80"
    - "443:443"
  environment:
    - EMAIL=example@example.com
	- DOMAINS=example.com,www.example.com
```

