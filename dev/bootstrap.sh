#!/usr/bin/env bash

set -o errexit
set -o pipefail
set -o nounset

[ ! -d "$(pwd)/packages" ] && mkdir -p "$(pwd)/packages"

docker run -it \
    -v $(pwd)/build:/opt/ros2_ws/build \
    osrf/ros:foxy-desktop \
