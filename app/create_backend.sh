#!/bin/bash

echo "[database]
MYSQL_HOST = ${MYSQL_HOST}
MYSQL_PORT = 3306
MYSQL_DB = ${MYSQL_DATABASE}
MYSQL_USER = ${MYSQL_USER}
MYSQL_PASSWORD = ${MYSQL_PASSWORD}
" > backend.conf 

set -m 
wait-for-it -h ${MYSQL_HOST} -p 3306 -t 50 -s -- gunicorn wsgi:app -b 0.0.0.0:8000 &

wait-for-it -h 0.0.0.0 -p 8000 -t 50 -- curl -X POST ${BACKEND_URL}/add -H 'Content-Type: application/json' -d '{"name":"jennie2","bcit_id":"A01234587"}'

fg