#!/bin/bash
cd /home/container

# Output ubuntu version
lsb_release -a

# Replace startup variables
MODIFIED_STARTUP='eval echo $(echo ${STARTUP} | sed -e 's/}}/}/g')'
echo ":/home/container$ ${MODIFIED_STARTUP}"

# Run the server
eval ${MODIFIED_STARTUP}
