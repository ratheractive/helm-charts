#!/bin/bash

helm package dev/* stable/*
helm repo index --url https://slavoo.github.io/helm-charts/ .
