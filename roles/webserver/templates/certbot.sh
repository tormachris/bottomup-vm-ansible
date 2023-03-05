#!/bin/bash
# {{ansible_managed}}
{% for server in webserver %}
certbot renew --nginx --cert-name {{ server.domain }}
{% endfor %}
