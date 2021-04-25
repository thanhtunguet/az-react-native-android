#!/bin/bash
source ~/.bashrc

yes | sdkmanager "platform-tools" "platforms;android-29"
yes | sdkmanager  "build-tools;29.0.3"
# sdkmanager --update
