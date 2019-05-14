# This is an auto generated Dockerfile for ros:ros-base
# generated from docker_images/create_ros_image.Dockerfile.em
FROM tensorflow/tensorflow::kinetic-ros-base-xenial


# install ros packages
RUN apt-get update && apt-get install -y \
    ros-kinetic-ros-base \
    && rm -rf /var/lib/apt/lists/*
