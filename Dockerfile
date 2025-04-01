FROM ubuntu:22.04

# 添加 i386 架构并更新 apt 源，同时安装 Python 和 pip 及编译工具
RUN dpkg --add-architecture i386 \
    && apt-get update \
    && apt-get install -y python3.10 python3-pip build-essential

# 升级 pip
RUN pip3 install --upgrade pip

# 安装所需的 Python 库
RUN pip3 install pyroomacoustics numpy matplotlib scipy ipython
