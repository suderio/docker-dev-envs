#!/bin/sh
DUSER=$(id -u)
DGROUP=$(id -g)

if [ $# -eq 1 ]
then
    echo "Starting git env at $1"
    docker run -it --rm -u "$DUSER":"$DGROUP" -v "$1":/app gitenv
else
    echo "Wrong arguments supplied!"
    echo "Usage: run.sh <project path>"  
fi
