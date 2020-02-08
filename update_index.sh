#!/bin/bash

if [[ $# == 0 ]];then 
  echo please provide name of the chart to repackage;
  exit 1;
fi

if [[ ! -e src/$1 ]];then
  echo failed to find package with name $1. Check the src folder.
  exit 1;
fi

helm package src/$1
helm repo index --url https://slavoo.github.io/helm-charts/ .

echo all done. You can now commit and push.
