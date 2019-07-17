#!/bin/bash

# Shows everything that's going on while the script runs
set -uvx

# Choosing a default Dockerfile in case the user doesn't
dockerfile=${1:-Dockerfile.fedora}

# Variables passed to podman at build time
host_arch=$(uname -i)
host_kernel_version=$(uname -r)

### TODO: Use a variable to choose the version tag
podman build \
    --build-arg HOST_ARCH=${host_arch} \
    --build-arg HOST_KERNEL_VERSION=${host_kernel_version} \
    -t moka/cuda:0.3 -f $dockerfile .
