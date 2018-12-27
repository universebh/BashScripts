#!/bin/bash

remote_host="8889"
new_remote_host=""
echo "Enter or input port number"
read new_remote_host
if [[ -z "$new_remote_host" ]]; then
    echo "jupyter notebook --no-browser --port=$remote_host"
    jupyter notebook --no-browser --port=$remote_host
else
    echo "jupyter notebook --no-browser --port=$new_remote_host"
    jupyter notebook --no-browser --port=$new_remote_host
fi
