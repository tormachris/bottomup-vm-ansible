#!/usr/bin/env bash
# {{ansible_managed}}

{{backup.prearecommand}}

{% if backup.internal %}

time ( rsync -azP --delete {{backup.folder}} backup@{{backup.host}}:{{backup.basedir}}/{{servicename}}/staging )

time ( ssh backup@{{backup.host}} 'tar -zcvf {{backup.basedir}}/{{servicename}}/{{servicename}}-$(date +"%Y-%m-%d").tar.gz -C {{backup.basedir}}/{{servicename}}/staging {{backup.tarfolder}}' )

{% else %}

time ( rsync -azPr --delete --prune-empty-dirs --include "*/" --include="*.tar.gz" --include="*.sql" --include="*.zip" --exclude="*" {{backup.basedir}}/ backup@{{backup.host}}:/mnt/backup/{{servicename}} )

{% endif %}
