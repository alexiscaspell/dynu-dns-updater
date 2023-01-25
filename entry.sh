#!/bin/sh

. /environment.sh

echo "${CRON} /updateIpDomain.sh >> /var/log/updateIpDomain.log" > /crontab.txt

/usr/bin/crontab /crontab.txt && /usr/sbin/crond -f -l 8
