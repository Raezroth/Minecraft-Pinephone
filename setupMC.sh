#!/bin/sh -e

MACHINE=$(uname -m)
DIR=~/Minecraft
# create folders
echo Setup 1/8
if [ ! -d "$DIR" ]; then
    mkdir "$DIR"
fi
cd "$DIR"
pwd

echo Setup 2/8
if [ "$MACHINE" = "aarch64" ]; then
    echo "Distro (64 bit)"
    if [ ! -d ~/lwjgl3arm64 ]; then
        mkdir ~/lwjgl3arm64
    fi
else
    echo "Distro (32 bit)"
    if [ ! -d ~/lwjgl3arm32 ]; then
        mkdir ~/lwjgl3arm32
    fi
fi



# download minecraft launcher
echo Setup 3/8
if [ ! -f TechnicLauncher.jar ]; then

    wget https://launcher.technicpack.net/launcher4/652/TechnicLauncher.jar
fi 
 
# Sets up desktop file.
if [ ! -f /opt/technic/TechnicLauncher.jar ]; then
    sudo mkdir /opt/technic
    sudo cp -r technic_logo.png /opt/minecraft/technic_logo.png
    sudo cp -r TechnicLauncher.desktop /usr/share/applications/TechnicLauncher.desktop  
    sudo cp -r TechnicLauncher.jar /opt/minecraft/TechnicLauncher.jar
    sudo chmod +x /usr/share/applications/TechnicLauncher.desktop
fi

# download java  
echo Setup 4/8
if [ "$MACHINE" = "aarch64" ]; then
    if [ ! -f jdk-8u251-linux-arm64-vfp-hflt.tar.gz ]; then
        wget https://www.dropbox.com/s/ft7fwlrjq5cnu87/jdk-8u251-linux-arm64-vfp-hflt.tar.gz
    fi
else
    if [ ! -f jdk-8u251-linux-arm32-vfp-hflt.tar.gz ]; then
        wget https://www.dropbox.com/s/mwelmbpq7vvs7pp/jdk-8u251-linux-arm32-vfp-hflt.tar.gz
    fi
fi
 
# download lwjgl3arm32
echo Setup 5/8
if [ "$MACHINE" = "aarch64" ]; then
    if [ ! -f lwjgl3arm64.tar.gz ]; then
        wget https://www.dropbox.com/s/0x765uoy6ihj3gr/lwjgl3arm64.tar.gz
    fi
else
    if [ ! -f lwjgl3arm32.tar.gz ]; then
        wget https://www.dropbox.com/s/xzegvb4srsuvhl3/lwjgl3arm32.tar.gz
    fi
fi

echo Setup 6/8
if [ ! -d /opt/jdk ]; then
    sudo mkdir /opt/jdk
fi
 
# extract oracle java  8
echo Setup 7/8
echo Extracting java ...
if [ "$MACHINE" = "aarch64" ]; then
    sudo tar -zxf jdk-8u251-linux-arm64-vfp-hflt.tar.gz -C /opt/jdk
# extract lwjgl3arm32
echo Setup 8/8
echo Extracting lwjgl3arm...
if [ "$MACHINE" = "aarch64" ]; then
    tar -zxf lwjgl3arm64.tar.gz -C ~/lwjgl3arm64
else
    tar -zxf lwjgl3arm32.tar.gz -C ~/lwjgl3arm32
fi

echo Done!!!
echo end setupMC1_16_5
