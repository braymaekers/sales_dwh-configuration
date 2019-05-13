#! /bin/sh
#PENTAHO_ENV = current folder name, eg. config-pdi-local
#PROJECT_NAME = current project name, eg. sales_dwh

export PENTAHO_ENV=$(basename $PWD)
export PROJECT_NAME=$(basename $(dirname $(dirname $PWD)))

cd "$PWD"/../../framework/configuration
sh pan.sh "$@"
