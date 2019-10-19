# helm-charts
My helm charts

## To add/update a chart

1. update/add your chart - if you update, remember to increase the Chart.yaml/version property
1. run ```helm package dev/* stable/* ``` - this will create tgz packages of your charts
1. run ```helm repo index --url https://slavoo.github.io/helm-charts/``` with your username and repo name - this will create the index.yaml
1. push yoru repo to github

## To Set-Up a similar repo:

1. create an empty repo 
1. create dev and stable directories
1. put your helm charts in whichever folder they belong
1. run ```helm package dev/* stable/* ``` - this will create tgz packages of your charts
1. run ```helm repo index --url https://slavoo.github.io/helm-charts/``` with your username and repo name - this will create the index.yaml
1. push yoru repo to github
1. in the settings of your github repo, activate the github pages and point your master repository as the source
