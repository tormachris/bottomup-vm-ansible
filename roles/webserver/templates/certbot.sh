#!/bin/bash
# {{ansible_managed}}
{% for server in webserver %}
certbot renew --dns-cloudflare --dns-cloudflare-credentials /root/cf-creds.ini 10 --cert-name {{ server.domain }}
{% endfor %}
