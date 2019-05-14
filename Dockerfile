# This is an auto generated Dockerfile for ros:ros-base
# generated from docker_images/create_ros_image.Dockerfile.em
FROM tensorflow::kinetic-ros-base-xenial


# install ros packages
RUN apt-get update && apt-get install -y \
    ros-kinetic-ros-base python-opencv python3-dev\
    python-dev python3-virtualenv python3-env python3-numpy python3-pandas \
    build-essentials sudo \
    && rm -rf /var/lib/apt/lists/*

RUN useradd -ms /bin/bash  ubuntu

RUN usermod -aG sudo ubuntu
