#!/bin/bash

#echo "ssh cz130@chixiang-ubuntu.colab.duke.edu"
#ssh cz130@chixiang-ubuntu.colab.duke.edu

host_name="cz130@dcc-slogin-01.oit.duke.edu"
input=""
echo "Enter or input 1/2"
read input
if [[ -z "$input" ]] || [[ "$input" == "1" ]]; then
    echo "ssh $host_name"
    ssh $host_name
elif [[ "$input" == "2" ]]; then
    host_name="cz130@dcc-slogin-02.oit.duke.edu"
    echo "ssh $host_name"
    ssh $host_name
else
    echo "Input should only include 1 or 2"
fi
