#!/bin/bash
source ~/.bashrc

yes | sdkmanager "platform-tools" "platforms;android-29"
yes | sdkmanager  "build-tools;29.0.3"

yes | sdkmanager "platform-tools" "platforms;android-30"
yes | sdkmanager  "build-tools;30.0.0"

yes | sdkmanager "platform-tools" "platforms;android-31"
yes | sdkmanager  "build-tools;31.0.0"

yes | sdkmanager "platform-tools" "platforms;android-32"
yes | sdkmanager  "build-tools;32.0.0"

yes | sdkmanager "platform-tools" "platforms;android-33"
yes | sdkmanager  "build-tools;33.0.0"

# sdkmanager --update
