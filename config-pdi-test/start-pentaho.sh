#! /bin/sh
#PROJECT_NAME = current project name, eg. sales_dwh
#PROJECT_ENV = current folder name, eg. config-pdi-local

#Determine the PROJECT_NAME and _ENV configuration based on parent directory
export PROJECT_NAME=$(basename $(dirname $PWD) -configuration) #removing -configuration from dir name
export PROJECT_ENV=$(basename $PWD)

echo "***" Setting PROJECT_NAME to $PROJECT_NAME "***"
echo "***" Setting PROJECT_ENV to $PROJECT_ENV "***"

#BASE_CONFIG_DIR is used later in init.sh to call back to this config-dir
export BASE_CONFIG_DIR=$PWD

#Capture current dir to switch back after execution
export ORIG_DIR=$PWD

cd "$PWD"/../../framework/bin
#Call framework common script
sh start-pentaho.sh "$@"
cd $ORIG_DIR
