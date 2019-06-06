# NVIDIA suggests you to use ubuntu:14.04
FROM ubuntu:14.04

# This image was created using the following tutorial:
# http://tleyden.github.io/blog/2014/11/04/coreos-with-nvidia-cuda-gpu-drivers/
RUN apt-get update && \
apt-get install -y \
gcc-4.7 \
g++-4.7 \
wget \
git \
make \
dpkg-dev

CMD
