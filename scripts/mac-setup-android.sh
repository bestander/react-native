brew install android-sdk
echo y | android update sdk --no-ui --all --filter extra-android-m2repository
echo y | android update sdk --no-ui --all --filter extra-android-support
echo y | android update sdk --no-ui --all --filter android-23
echo y | android update sdk --no-ui --all --filter build-tools-23.0.1
echo y | android update sdk --no-ui --all --filter platform-tools
echo y | android update sdk --no-ui --all --filter extra-google-m2repository
echo y | android update sdk --no-ui --all --filter extra-google-google_play_services
echo y | android update sdk --no-ui --all --filter sys-img-armeabi-v7a-android-23
source scripts/circle-ci-android-setup.sh && getAndroidSDK
brew install wget
cd $ANDROID_HOME && wget http://dl.google.com/android/repository/android-ndk-r10e-darwin-x86_64.zip
cd $ANDROID_HOME && unzip $ANDROID_HOME/android-ndk-r10e-darwin-x86_64.zip
rm $ANDROID_HOME/android-ndk-r10e-darwin-x86_64.zip
