#!/bin/sh

set -o errexit
set -o pipefail
set -o nounset

USERNAME="$(logname)"
echo "${USERNAME}:$(id -u ${USERNAME}):1" >> /etc/subuid
echo "${USERNAME}:$(id -g ${USERNAME}):1" >> /etc/subgid

[ ! -d /etc/docker ] && mkdir /etc/docker
touch /etc/docker/daemon.json
cat<<EOF >> /etc/docker/daemon.json
{
  "userns-remap": "default"
}
EOF
