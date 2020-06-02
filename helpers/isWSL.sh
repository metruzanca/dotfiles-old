#!/bin/bash

set -e
if grep -qEi "(Microsoft|WSL)" /proc/version &> /dev/null ; then
#    return 0
    echo "WSL"
else
    echo "Linux/MacOs"
#    return 1
fi
