#!/bin/bash

oc create secret generic user-at-github \
--from-literal=username=${RHT_OCP4_GITHUB_USER} \
--from-literal=password=${RHT_OCP4_GITHUB_TOKEN} \
--type=kubernetes.io/basic-auth

oc secrets link builder user-at-github

