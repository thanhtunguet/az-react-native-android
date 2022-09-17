#!/bin/bash
source ~/.bashrc

yes | sdkmanager "platform-tools" "platforms;android-31"
yes | sdkmanager  "build-tools;31.0.0"

yes | sdkmanager "platform-tools" "platforms;android-33"
yes | sdkmanager  "build-tools;33.0.0"

yes | sdkmanager "cmake;3.18.1"

# sdkmanager --update
