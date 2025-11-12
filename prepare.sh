#!/bin/bash
export DEBIAN_FRONTEND=noninteractive

apt-get update
apt-get install build-essential chrpath cpio debianutils diffstat file gawk gcc git iputils-ping libacl1 \
     liblz4-tool locales python3 python3-git python3-jinja2 python3-pexpect python3-pip python3-subunit socat \
     texinfo unzip wget xz-utils zstd locales tzdata -y

locale-gen en_US.UTF-8
update-locale LANG=en_US.UTF-8
export LANG=en_US.UTF-8
export LANGUAGE=en_US:en
export LC_ALL=en_US.UTF-8