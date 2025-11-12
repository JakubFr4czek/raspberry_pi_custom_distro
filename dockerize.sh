#!/bin/bash

docker run -i -v $(pwd):/var/yocto --rm --workdir /var/yocto --name yoctobuilder ubuntu:22.04 bash