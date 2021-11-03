#!/bin/bash

export UMT_PATH=/home/pi/umt/ 
export UMT_OUT=${UMT_PATH}/out 

mkdir -p ${UMT_PATH}
mkdir -p ${UMT_OUT}
cd ${UMT_PATH}

docker run --rm --env="DISPLAY" --net=host -it --privileged --mount type=bind,src=${UMT_OUT},dst=/root umt umt "$@"
