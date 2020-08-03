#!/bin/sh
DUSER=$(id -u)
DGROUP=$(id -g)

if [ $# -eq 0 ]
then
      echo "No arguments supplied!"
      echo "Usage: run.sh <project path> [<maven repo (.m2 user directory)>]"  
fi

if [ $# -eq 1 ]
then
    echo "Starting java env at $1"
    docker run -it --rm -u $DUSER:$DGROUP -v "$1":/app ibmjavaenv
else
    echo "Starting java env at $1 with maven repo at $2"
    docker run -it --rm -u "$DUSER":"$DGROUP" -v "$1":/app -v "$2":/.m2 ibmjavaenv
fi
