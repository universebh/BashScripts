#!/bin/bash

local_host="8887"
new_local_host=""
echo "Enter or input port number"
read new_local_host
if [[ -z "$new_local_host" ]]; then
    echo "lsof -ti:$local_host | xargs kill -9"
    lsof -ti:$local_host | xargs kill -9
else
    echo "lsof -ti:$new_local_host | xargs kill -9"
    lsof -ti:$new_local_host | xargs kill -9
fi
