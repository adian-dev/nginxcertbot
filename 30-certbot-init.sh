#!/bin/sh

nginx && \
certbot \
	--nginx -n --agree-tos \
	--email "${EMAIL?No email provided}" \
	-d "${DOMAINS?No domains provided}" && \
nginx -s quit

