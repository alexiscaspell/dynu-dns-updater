. /environment.sh

DOMAIN=${DOMAIN:-$1}

dns=$(/getDnsDomain.sh $DOMAIN)
public_ip=$(curl ifconfig.me)
actual_ip="$(echo $dns | jq '.ipv4Address')"
dns_id="$(echo $dns | jq '.id')"

if [ "\"$public_ip\"" == "$(echo $dns | jq '.ipv4Address')" ]; then
	echo "Public ip doesnt changed yet :)"
else
	echo "Changing DNS of $DOMAIN to $public_ip ..."

  new_dns=$(echo $dns | jq ".ipv4Address = \"$public_ip\"")

  result=$(curl -X 'POST' \
  "$DYNU_DNS_URI/$dns_id" \
  -H 'accept: application/json' \
  -H "API-Key: ${APIKEY}" \
  -H 'Content-Type: application/json' \
  -d "$new_dns" || echo '{'statusCode':500}')

  if [ "$result" == "{\"statusCode\":200}" ]; then
    echo "Registro DNS actualizado!"
  else
    echo "Status: ${staus_code}"
    echo "No se pudo actualizar el registro DNS :( "
  fi
fi
