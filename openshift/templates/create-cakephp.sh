#!/bin/bash

echo "Ensure the following env variables are set ..."
echo RHT_OCP4_DEV_USER=${RHT_OCP4_DEV_USER}
echo RHT_OCP4_SUB_PROJECT=${RHT_OCP4_SUB_PROJECT}
echo RHT_OCP4_GITHUB_USER=${RHT_OCP4_GITHUB_USER}
echo RHT_OCP4_GITHUB_TOKEN=${RHT_OCP4_GITHUB_TOKEN}
echo RHT_OCP4_WILDCARD_DOMAIN=${RHT_OCP4_WILDCARD_DOMAIN}

oc new-app --template ${RHT_OCP4_DEV_USER}-${RHT_SUB_PROJECT}/cakephp-example \
	--name cakephpex \
	--source-secret=user-at-github \
	-p NAME=cakephpex \
	-p APPLICATION_DOMAIN=quote-${RHT_OCP4_DEV_USER}.${RHT_OCP4_WILDCARD_DOMAIN} \
	-p SOURCE_REPOSITORY_URL=https://github.com/${RHT_OCP4_GITHUB_USER}/cakephp-ex \
	-p SOURCE_REPOSITORY_REF=devenv01 

