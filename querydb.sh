#!/bin/sh
#Query database with clawback.sql

DB_NAME="bitnami_espocrm"
DB_USER="bn_espocrm"
DB_PASS="5f454f5f33"
DATE=`date +%F.%H%M`

#export database every hour

mysql -u $DB_USER -p${DB_PASS} $DB_NAME < "clawback.sql"


