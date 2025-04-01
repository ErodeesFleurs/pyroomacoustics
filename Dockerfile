# NB: You will have to increase the memory of your Docker containers to 4 GB.
# Less may also be sufficient, but this is necessary for building the C++ code
# for pyroomacoustics. How to increase memory: https://docs.docker.com/docker-for-mac/#resources
#
# Then you can build with: `docker build -t pyroom_container .`
# And enter container with: `docker run -it pyroom_container:latest /bin/bash`
FROM ubuntu:22.04

RUN dpkg --add-architecture i386
RUN apt-get update
RUN apt-get install -y python3.10 python-pip

RUN python3 -m pip install --user --ignore-installed pip

RUN pip3 install pyroomacoustics
RUN pip3 install numpy
RUN pip3 install matplotlib
RUN pip3 install scipy
RUN pip3 install ipython
