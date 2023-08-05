gitv="$1"
url="https://api.github.com/users/"
cons="${url} ${gitv}"
curl -s $cons | jq '.' 