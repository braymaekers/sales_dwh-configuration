#! /bin/sh
#PENTAHO_ENV = current folder name, eg. config-pdi-local
#PROJECT_NAME = current project name, eg. sales_dwh

export PENTAHO_ENV=$(basename $PWD)
export PROJECT_NAME=$(basename $(dirname $PWD) -configuration) #removing -configuration from dir name

echo "***" Setting PENTAHO_ENV to $PENTAHO_ENV "***"
echo "***" Setting PROJECT_NAME to $PROJECT_NAME "***"

cd "$PWD"/../../framework/configuration
sh spoon.sh
