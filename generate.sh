#!/bin/bash

PWD=$(pwd)
cd $PWD

if [[ "$1" = "" ]]; then
echo -ne "Please Input The Golang Porject Name: "
read project
if [ "$project" = "" ]; then
echo -e "demo";
PRO_NAME=demo;
else
PRO_NAME=$project;
fi
else
PRO_NAME=$1;
fi
#generate directory
echo "Init $PRO_NAME Directory …"
mkdir -p $PRO_NAME/api/proto
mkdir -p $PRO_NAME/api/$PRO_NAME
mkdir -p $PRO_NAME/assets
mkdir -p $PRO_NAME/build
mkdir -p $PRO_NAME/cmd
mkdir -p $PRO_NAME/conf
mkdir -p $PRO_NAME/deployments
mkdir -p $PRO_NAME/docs
mkdir -p $PRO_NAME/examples
mkdir -p $PRO_NAME/githooks
mkdir -p $PRO_NAME/init
mkdir -p $PRO_NAME/internal
mkdir -p $PRO_NAME/pkg
mkdir -p $PRO_NAME/scripts
mkdir -p $PRO_NAME/test
mkdir -p $PRO_NAME/third_patry
mkdir -p $PRO_NAME/tools
mkdir -p $PRO_NAME/vendor
mkdir -p $PRO_NAME/web
mkdir -p $PRO_NAME/website
cd $PRO_NAME
touch .gitkeep
go mod init $PRO_NAME


#generate main.go
echo "Generate main.go "
cd cmd
echo "package main" > main.go
echo >> main.go
echo "import (" >> main.go
echo " \"fmt\"" >> main.go
echo ")" >> main.go
echo >> main.go
echo "func main() {" >> main.go
echo " fmt.Println(\"Hello $PRO_NAME!\")" >> main.go
echo "}" >> main.go
gofmt main.go
echo "Init $PRO_NAME Success!"

