#! /usr/bin/bash

ll=$(docker ps -a | awk '{print $1}')
for lll in $ll
do
docker rm $lll
done
