. /environment.sh

curl -X 'GET' \
  "$DYNU_DNS_URI" \
  -H 'accept: application/json' \
  -H "API-Key: ${APIKEY}"