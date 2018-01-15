#!/bin/bash

#https://xboxapi.com/documentation

#curl -i -H "X-AUTH: $AUTH_KEY" https://xboxapi.com/v2/xuid/$GAMERTAG

#curl -H "X-AUTH: $AUTH_KEY" -H \
#"Accept: application/json" https://xboxapi.com/v2/$XUID/presence/ | jq '.'

#echo '{"results":[{"id":1},{"id":2},{"id":3}]}' | jq -r '.results | map("ID is \(.id)")'
#https://github.com/stedolan/jq/issues/189

#http://www.starkandwayne.com/blog/bash-for-loop-over-json-array-using-jq/

for row in $(curl -H "X-AUTH: $AUTH_KEY" https://xboxapi.com/v2/$XUID/presence/ | \
jq -r '.["devices"][0]["titles"] | map("\(.name)") | .[] | @base64'); 
do  
   #name=$(echo $row | jq -r '.name')
   #echo $name
   #if [ $name == $b ]
   name=$(echo ${row} | base64 --decode)
#   echo $name
   if [ "$name" == "$GAME" ];
    then
    echo "$GAMERTAG IS PLAYING $name"
   fi
done  

     

