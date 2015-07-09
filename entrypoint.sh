#!/bin/bash

if [ ! -e /app/node_modules ];
then
  npm install
fi

if [ $NODE_ENV="development" ];
then
  grunt
else
  node index
fi
