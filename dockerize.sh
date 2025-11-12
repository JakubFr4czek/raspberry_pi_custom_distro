#!/bin/bash

sudo docker run -it -v $(pwd):/var/yocto --rm --workdir /var/yocto --name yoctobuilder ubuntu:22.04 bash