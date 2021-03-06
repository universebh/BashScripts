#!/bin/bash

input=""
echo "Enter or input 1/2"
read input

if [[ -z "$input" ]] || [[ "$input" == "1" ]]; then
    echo "srun -p gpu-common --gres=gpu:1 -c 6 --pty bash -i"
    srun -p gpu-common --gres=gpu:1 -c 6 --pty bash -i
elif [[ "$input" == "2" ]]; then
    echo "srun -p gpu-common --gres=gpu:1 --pty bash -i"
    srun -p gpu-common --gres=gpu:1 --pty bash -i
else
    echo "Input should only include 1 or 2"
fi
