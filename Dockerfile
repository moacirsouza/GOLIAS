# This image was created using the following tutorial:
# http://tleyden.github.io/blog/2014/11/04/coreos-with-nvidia-cuda-gpu-drivers/

# NVIDIA suggests you to use ubuntu:14.04
FROM ubuntu:14.04

# Installing Ubuntu dependencies
RUN apt-get update && \
apt-get install -y \
gcc-4.7 \
g++-4.7 \
wget \
git \
make \
dpkg-dev

# Preparing the environment to use the correct GCC version
RUN update-alternatives --remove gcc /usr/bin/gcc-4.8 && \
update-alternatives --install /usr/bin/gcc gcc /usr/bin/gcc-4.7 60 --slave /usr/bin/g++ g++ /usr/bin/g++-4.7 && \
update-alternatives --install /usr/bin/gcc gcc /usr/bin/gcc-4.8 40 --slave /usr/bin/g++ g++ /usr/bin/g++-4.8

# Getting the right kernel headers for the system
RUN mkdir -p /usr/src/kernels && \
cd /usr/src/kernels && \
git init && \
git remote add -f -t v4.19.43-coreos origin https://github.com/coreos/linux.git
