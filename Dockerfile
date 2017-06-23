FROM fedora:25
MAINTAINER Dylan Harries <dylan.harries@adelaide.edu.au>

RUN dnf update -y --setopt=deltarpm=false \
   && dnf install --setopt=deltarpm=false -y \
   gcc gcc-c++ gcc-gfortran binutils make \
   && dnf clean all
