#!/bin/bash
wait-for-it -h ${MYSQL_HOST} -p 3306 -t 50 -- curl -X POST ${BACKEND_URL}/add -H 'Content-Type: application/json' -d '{"name":"jennie","bcit_id":"A01234586"}'