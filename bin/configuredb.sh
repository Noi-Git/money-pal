#!/bin/bash

export PGPASSWORD='12345'

database="money_pal"

echo "Configuring database: $database"

dropdb -U node_user money_pal
createdb -U node_user money_pal

psql -U node_user money_pal < ./bin/sql/mpal.sql

echo "$database configured"