#!/bin/bash

if [[ $# == 0 ]];then 
  echo please provide path to the chart to package;
  exit 1;
fi

if [[ ! -e $1 ]];then
  echo failed to find package $1. Check if the path is correct.
  exit 1;
fi

helm package $1
helm repo index --url https://ratheractive.github.io/helm-charts/ .

echo all done. You can now commit and push.
