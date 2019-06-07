#!/bin/bash

export HOST_KERNEL_VERSION="v$(uname -r)"

docker build -t moka/cuda:latest .
