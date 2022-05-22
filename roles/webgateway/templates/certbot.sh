#!/bin/bash
# {{ansible_managed}}
certbot renew --nginx --cert-name tormakristof.eu
{% for proxysite in proxy %}
certbot renew --nginx --cert-name {{ proxysite.domain }}
{% endfor %}
{% for staticsite in static %}
certbot renew --nginx --cert-name {{ staticsite.domain }}
{% endfor %}
{% for redirectsite in redirect %}
certbot renew --nginx --cert-name {{ redirectsite.domain }}
{% endfor %}
