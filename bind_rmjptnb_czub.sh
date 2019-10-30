#!/bin/bash

host_name="cz130@dcc-slogin-01.oit.duke.edu"
input=""
echo "Enter or input 1/2 to select host name"
read input
if [[ -z "$input" ]] || [[ "$input" == "1" ]]; then
    echo "Host Name: $host_name"
elif [[ "$input" == "2" ]]; then
    host_name="cz130@dcc-slogin-02.oit.duke.edu"
    echo "Host Nmae: $host_name"
else
    echo "Input should only include 1 or 2"
fi

local_host="8887"
remote_host="8889"
temp_tup=""
echo "Enter or input local:remote"
read temp_tup
if [[ -z "$temp_tup" ]]; then
    echo "ssh -N -f -L localhost:$local_host:localhost:$remote_host $host_name"
    ssh -N -f -L localhost:$local_host:localhost:$remote_host $host_name
elif echo "$temp_tup" | grep -q ":"; then
    local_host=${temp_tup%:*}
    remote_host=${temp_tup##*:}
    echo "ssh -N -f -L localhost:$local_host:localhost:$remote_host $host_name"
    ssh -N -f -L localhost:$local_host:localhost:$remote_host $host_name
else
    echo "Input should include a colon"
fi
