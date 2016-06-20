#!/bin/bash
if [ "$#" -ne 1 ]; then
    echo "Usage: comparison.sh <path_configuration.properties>"
    exit
fi
java -Xmx4G -jar homomorphismchecker.jar "$1"