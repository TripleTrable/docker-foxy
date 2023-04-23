#!/bin/sh

set -o errexit
set -o pipefail
set -o nounset

USERNAME="$(logname)"
echo "${USERNAME}:$(id -u ${USERNAME}):1" >> /etc/subuid
echo "${USERNAME}:$(id -g ${USERNAME}):1" >> /etc/subgid
