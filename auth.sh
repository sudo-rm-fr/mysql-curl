#!/bin/sh

json=$( curl -k 'https://api.cnx1.uk/consumer/login' -X POST -H 'Content-Type: application/json' -d '{
  "username": "ClearCoverCompare",
  "password": "fFwc7MUwKJ429GU8"
        }'
-o "result.txt"
 )
token=$( jq -r ".token" <<<"$json" )

curl -vX POST -H "authorization:  Bearer $token" -H "User-Agent:ClearCoverCompare" -H "Content-Type: application/json" -d @/home/ned300889/output.json  https://api.cnx1.uk/customer/bulk_create >>finalresult.txt

