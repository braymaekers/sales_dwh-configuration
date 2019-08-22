#! /bin/sh
#PROJECT_NAME = current project name, eg. sales_dwh
#PROJECT_ENV = current folder name, eg. config-pdi-local

export PROJECT_NAME=$(basename $(dirname $PWD) -configuration) #removing -configuration from dir name
export PROJECT_ENV=$(basename $PWD)

echo "***" Setting PROJECT_NAME to $PROJECT_NAME "***"
echo "***" Setting PROJECT_ENV to $PROJECT_ENV "***"

cd "$PWD"/../../framework/bin
sh kitchen.sh "$@"
