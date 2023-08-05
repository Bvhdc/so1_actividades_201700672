gitv="$1"
url="https://api.github.com/users/"
cons="${url}${gitv}"
content=$(curl -s $cons)
userid=$( jq -r  '.id' <<< "${content}" )
created=$( jq -r  '.created_at' <<< "${content}" )  
now=$(date)
log="/tmp/$now/saludos.log"
touch $log
echo “Hola $gitv. User ID: $userid. Cuenta fue creada el: $created.”>$log