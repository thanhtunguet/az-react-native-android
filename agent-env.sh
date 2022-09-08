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
echo 'export PATH="$JAVA_HOME/bin:$ANDROID_HOME/cmdline-tools/tools/bin:$ANDROID_HOME/platform-tools:/root/DevTools/Android/build-tools/29.0.2:/root/DevTools/Android/build-tools/29.0.3:${PATH}"' >> ~/.bashrc

source ~/.bashrc
