. /environment.sh

DOMAIN=${DOMAIN:-$1}

all_dns=$(/getAllDns.sh)

echo $all_dns | jq ".domains[] | select(.name == \"${DOMAIN}\")"