APIKEY="${APIKEY:-myapikey}"
DYNU_URL="https://api.dynu.com/v2"
DYNU_DNS_URI="$DYNU_URL/dns"
INTERVAL=${INTERVAL:-30}
DOMAIN="${DOMAIN:-mydomain}"
CRON="*/${INTERVAL} * * * *"