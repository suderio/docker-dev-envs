#!/bin/sh

if [ $# -eq 0 ]
then
      echo "No arguments supplied!"
      echo "Usage: run.sh <project path> [<maven repo (.m2 user directory)>]"  
fi

if [ $# -eq 1 ]
then
    echo "Starting java env at $1"
    docker run -it --rm -v "$1":/app javaenv
else
    echo "Starting java env at $1 with maven repo at $2"
    docker run -it --rm -v "$1":/app -v "$2":/home/dev/.m2 javaenv
fi