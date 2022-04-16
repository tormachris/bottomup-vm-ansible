#!/usr/bin/env bash
# {{ansible_managed}}

{{backup.prearecommand}}

time ( rsync -azP --delete {{backup.folder}} backup@192.168.69.26:/mnt/backupstore/{{servicename}}/staging )

time ( ssh backup@backup.stargate.internal 'tar -zcvf /mnt/backupstore/{{servicename}}/{{servicename}}-$(date +"%Y-%m-%d").tar.gz -C /mnt/backupstore/{{servicename}}/staging' )
