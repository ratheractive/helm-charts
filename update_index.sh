#!/bin/bash

helm package src/* 
helm repo index --url https://slavoo.github.io/helm-charts/ .
