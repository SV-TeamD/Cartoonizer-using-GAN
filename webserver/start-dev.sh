#!/bin/sh
LWHITE="\033[1;37m"
LCYAN="\033[1;36m"

echo "${LCYAN}Web Server Start"

## wait-for-it.sh ##
# Usage:
#     ...
#     -- COMMAND ARGS             Execute command with args after the test finishes
bash ../wait-for-it.sh rabbitmq:15672 -s -t 30

python3 src/app.py