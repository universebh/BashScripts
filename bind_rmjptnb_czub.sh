#!/bin/bash

local_host="8887"
new_local_host=""
remote_host="8889"
new_remote_host=""
temp_tup=""
host_name="cz130@chixiang-ubuntu.colab.duke.edu"
echo "Enter or input local:remote"
read temp_tup
if [[ -z "$temp_tup" ]]; then
    echo "ssh -N -f -L localhost:$local_host:localhost:$remote_host $host_name"
    ssh -N -f -L localhost:$local_host:localhost:$remote_host $host_name
elif echo "$temp_tup" | grep -q ":"; then
    new_local_host=${temp_tup%:*}
    new_remote_host=${temp_tup##*:}
    echo "ssh -N -f -L localhost:$new_local_host:localhost:$new_remote_host $host_name"
    ssh -N -f -L localhost:$new_local_host:localhost:$new_remote_host $host_name
else
    echo "Input should include a colon"
fi
