#!/bin/bash

# The kernel version is need to the compilation process
# of the CUDA driver
export host_kernel_version="v$(uname -r)"

docker build \
--build-arg HOST_KERNEL_VERSION=${host_kernel_version} \
-t moka/cuda:latest .
