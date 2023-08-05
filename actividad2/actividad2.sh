gitv="$1"
url="https://api.github.com/users/"
cons="${url} ${gitv}"
content=$(curl -s $cons)
userid=$( jq -r  '.id' <<< "${content}" )
created=$( jq -r  '.created_at' <<< "${content}" )  
now=$(date)
log="/tmp/$(now)/saludos.log"
echo $log