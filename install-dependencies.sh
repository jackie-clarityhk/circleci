#!/bin/bash

# Fix the CircleCI path
export PATH="$ANDROID_HOME/platform-tools:$ANDROID_HOME/tools:$PATH"

DEPS="$ANDROID_HOME/installed-dependencies"

if [ ! -e $DEPS ]; then
  cp -r /usr/local/android-sdk-linux $ANDROID_HOME &&
  # echo y | android update sdk -u -a -t android-19 &&
  # echo y | android update sdk -u -a -t platform-tools &&
  # echo y | android update sdk -u -a -t build-tools-19.1.0 &&
  # echo y | android update sdk -u -a -t sys-img-x86-android-18 &&
  # echo y | android update sdk -u -a -t addon-google_apis-google-19 &&
  # echo n | android create avd -n testing -f -t android-19 &&
  
  echo y | android update sdk --no-ui --filter "android-19" &&
  echo y | android update sdk -u -a -t platform-tools &&
  echo y | android update sdk --no-ui --filter "build-tools-19.1.0" &&
  echo y | android update sdk --no-ui --filter "tools" &&
  echo y | android update sdk --no-ui --filter "extra-android-m2repository" &&
  echo y | android update sdk --no-ui --filter "extra-android-support" &&
  echo y | android update sdk --no-ui --filter "extra-google-m2repositor" &&
   
  touch $DEPS
fi