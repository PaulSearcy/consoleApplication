#!/bin/bash

curl -s https://jsonplaceholder.typicode.com/photos > photos.json

if test -z "$1"
then
    echo "Please pass an integer to filter against albumId"
    exit 1
else
    jq --argjson input $1 'map(select(.albumId == $input)) | map({albumId,title,id})' photos.json
fi