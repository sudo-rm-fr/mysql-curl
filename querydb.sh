#!/bin/sh
#Query database with clawback.sql

DB_NAME=
DB_USER=
DB_PASS=
DATE=`date +%F.%H%M`

#export database every hour

mysql -u $DB_USER -p${DB_PASS} $DB_NAME < "clawback.sql"


