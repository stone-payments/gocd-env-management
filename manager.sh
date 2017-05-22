#!/bin/bash
# Script to help the use of the GoCD Environment Manager
# qaas@stone.com.br, May 2017
#
# Use: ./manager.sh <action> <environment> <pipeline>
#   action: list | add | remove
#   environment: the name of the environment you want to manage
#   pipeline: the name of the pipeline you want to add or remove to an environment
#
# Example:
# ./manager.sh list Dev My_Pipeline

ACTION=$1
ENVIRONMENT=$2
PIPELINE=$3

APP_URL="https://gocd-env-management.paas.in-1.dc1.buy4.io"

curl "$APP_URL/$ACTION?env=$ENVIRONMENT&pipeline=$PIPELINE"
