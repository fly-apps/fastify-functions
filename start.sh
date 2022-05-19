#!/bin/sh

TIME_TO_SHUTDOWN="${IDLE_TIME_TO_SHUTDOWN:-120}"
node server &
/tired-proxy --port 8080 --host http://localhost:3000 --time $TIME_TO_SHUTDOWN
