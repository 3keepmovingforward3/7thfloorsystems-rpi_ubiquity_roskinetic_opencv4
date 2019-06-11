# This is an auto generated Dockerfile for ros:ros-base
# generated from docker_images/create_ros_image.Dockerfile.em
FROM tensorflow/tensorflow::kinetic-ros-base-xenial



# install ros packages
RUN apt update && apt upgrade -y

RUN apt install -y ros-kinetic-desktop-full python-opencv python3-dev\
    python-dev python3-virtualenv python3-venv python3-numpy python3-pandas \
    build-essential ros-kinetic-perception=1.3.2-0* \
    && rm -rf /var/lib/apt/lists/*

RUN useradd -ms --disabled-password /bin/bash ubuntu
USER ubuntu
WORKDIR /home/newuser
