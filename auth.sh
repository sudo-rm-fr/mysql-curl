#!/bin/sh

json=$( curl -k '' -X POST -H 'Content-Type: application/json' -d '{
  "username": "",
  "password": ""
        }'
-o "result.txt"
 )
token=$( jq -r ".token" <<<"$json" )

curl -vX POST -H "authorization:  Bearer $token" -H "" -H "Content-Type: application/json" -d    >>finalresult.txt

