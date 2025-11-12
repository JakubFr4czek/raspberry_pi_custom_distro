#!/bin/bash
git clone --depth 1 https://git.yoctoproject.org/poky -b scarthgap
cd poky
git clone --depth 1 git://git.yoctoproject.org/meta-raspberrypi -b scarthgap
git clone --depth 1 https://git.openembedded.org/meta-openembedded -b scarthgap

ln -s ../meta-my-layer meta-my-layer
ln -s ../meta-minecraft meta-minecraft

source oe-init-build-env my_rpi_build

rm -rf conf/bblayers.conf
rm -rf conf/local.conf

ln -s ../../../files/bblayers.conf conf/bblayers.conf
ln -s ../../../files/local.conf conf/local.conf

bitbake core-image-full-cmdline