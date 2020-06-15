#!/bin/bash

oc new-app --template ${RHT_OCP4_DEV_USER}-common/cakephp-example \
	-p NAME=cakephpex \
	-p APPLICATION_DOMAIN=quote-${RHT_OCP4_DEV_USER}.${RHT_OCP4_WILDCARD_DOMAIN} \
	-p SOURCE_REPOSITORY_URL=https://github.com/${RHT_OCP4_GITHUB_USER}/cakephp \
	-p SOURCE_REPOSITORY_REF=devenv01 \
	--name cakephpex
	--source-secret=github-secret



