#!/bin/bash

apt-get update
apt-get install apt-utils curl wget -y

curl -fsSL https://deb.nodesource.com/setup_16.x | bash -

apt-get update
apt-get install -y \
        --no-install-recommends \
        ca-certificates \
        curl \
        jq \
        git \
        iputils-ping \
        libcurl4 \
        libunwind8 \
        netcat \
        libssl1.0 \
        unzip \
        vim \
        tar \
        default-jdk \
        openjdk-11-jdk \
        libicu-dev \
        build-essential \
        nodejs

npm install --global yarn

mkdir ~/DevTools
mkdir ~/DevTools/Android
mkdir ~/DevTools/Android/cmdline-tools

mv tools ~/DevTools/Android/cmdline-tools/

wget https://github.com/Commit451/android-cmake-installer/releases/download/1.1.0/install-cmake.sh
chmod +x install-cmake.sh
./install-cmake.sh

echo 'export PATH=$PATH:$JAVA_HOME/bin' >> ~/.bashrc
echo 'DEV_TOOLS="/root/DevTools"'>> ~/.bashrc
echo 'JAVA_HOME="/usr/lib/jvm/default-java"' >> ~/.bashrc
echo 'ANDROID_HOME="$DEV_TOOLS/Android"' >> ~/.bashrc
echo 'export JAVA_HOME' >> ~/.bashrc 
echo 'export ANDROID_HOME' >> ~/.bashrc

echo 'export PATH="${PATH}:${ANDROID_HOME}/cmake/3.18.1/bin"' >> ~/.bashrc
echo 'export PATH="${PATH}:${JAVA_HOME}/bin"' >> ~/.bashrc
echo 'export PATH="${PATH}:${ANDROID_HOME}/cmdline-tools/tools/bin"' >> ~/.bashrc
echo 'export PATH="${PATH}:${ANDROID_HOME}/platform-tools"' >> ~/.bashrc
echo 'export PATH="${PATH}:${ANDROID_HOME}/build-tools/31.0.0"' >> ~/.bashrc
echo 'export PATH="${PATH}:${ANDROID_HOME}/build-tools/33.0.0"' >> ~/.bashrc

source ~/.bashrc
