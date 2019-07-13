#!/bin/bash

# Variables passed to podman at build time
host_arch=$(uname -i)
host_kernel_version=$(uname -r)

docker build \
    --build-arg HOST_ARCH=${host_arch} \
    --build-arg HOST_KERNEL_VERSION=${host_kernel_version} \
    -t moka/cuda:0.1 .
