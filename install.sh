#!/bin/bash

export host_kernel_version="v$(uname -r)"

docker build --build-arg HOST_KERNEL_VERSION=${host_kernel_version}  -t moka/cuda:latest .
 
