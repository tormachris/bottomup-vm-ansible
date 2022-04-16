#!/usr/bin/env bash
# {{ansible_managed}}

{{backup.preare-command}}

time ( rsync -azP --delete {{backup.folder}} backup@192.168.69.26:/mnt/backupstore/{{service-name}}/staging )

time ( ssh backup@backup.stargate.internal 'tar -zcvf /mnt/backupstore/{{service-name}}/{{service-name}}-$(date +"%Y-%m-%d").tar.gz -C /mnt/backupstore/{{service-name}}/staging' )
