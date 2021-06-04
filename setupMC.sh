#!/bin/sh -e

MACHINE=$(uname -m)
DIR=~/Minecraft

# create folders
echo Setup 1/10
if [ ! -d "$DIR" ]; then
    mkdir "$DIR"
fi
cd "$DIR"
pwd

echo Setup 2/10
if [ "$MACHINE" = "aarch64" ]; then
    echo "Raspberry Pi OS (64 bit)"
    if [ ! -d ~/lwjgl3arm64 ]; then
        mkdir ~/lwjgl3arm64
    fi
else
    echo "Raspberry Pi OS (32 bit)"
    if [ ! -d ~/lwjgl3arm32 ]; then
        mkdir ~/lwjgl3arm32
    fi
fi

# download minecraft launcher
echo Setup 3/10
if [ ! -f launcher.jar ]; then
    wget https://launcher.mojang.com/v1/objects/eabbff5ff8e21250e33670924a0c5e38f47c840b/launcher.jar
fi
 
# download java  
echo Setup 4/10
if [ "$MACHINE" = "aarch64" ]; then
    if [ ! -f jdk-8u251-linux-arm64-vfp-hflt.tar.gz ]; then
        wget https://www.dropbox.com/s/ft7fwlrjq5cnu87/jdk-8u251-linux-arm64-vfp-hflt.tar.gz
    fi
else
    if [ ! -f jdk-8u251-linux-arm32-vfp-hflt.tar.gz ]; then
        wget https://www.dropbox.com/s/mwelmbpq7vvs7pp/jdk-8u251-linux-arm32-vfp-hflt.tar.gz
    fi
fi

# download optifine
echo Setup 5/10
if [ ! -f preview_OptiFine_1.16.1_HD_U_G2_pre2.jar ]; then
    wget https://www.dropbox.com/s/kigepro6f7nh1mw/preview_OptiFine_1.16.1_HD_U_G2_pre2.jar
fi
 
# download lwjgl3arm32
echo Setup 6/10
if [ "$MACHINE" = "aarch64" ]; then
    if [ ! -f lwjgl3arm64.tar.gz ]; then
        wget https://www.dropbox.com/s/0x765uoy6ihj3gr/lwjgl3arm64.tar.gz
    fi
else
    if [ ! -f lwjgl3arm32.tar.gz ]; then
        wget https://www.dropbox.com/s/xzegvb4srsuvhl3/lwjgl3arm32.tar.gz
    fi
fi

echo Setup 7/10
if [ ! -d /opt/jdk ]; then
    sudo mkdir /opt/jdk
fi
 
# extract oracle java  8
echo Setup 8/10
echo Extracting java ...
if [ "$MACHINE" = "aarch64" ]; then
    sudo tar -zxf jdk-8u251-linux-arm64-vfp-hflt.tar.gz -C /opt/jdk
    # install opnjdk for launcher.jar and optifine install
    sudo apt install openjdk-11-jdk -y
else
    sudo tar -zxf jdk-8u251-linux-arm32-vfp-hflt.tar.gz -C /opt/jdk
fi

# extract lwjgl3arm32
echo Setup 9/10
echo Extracting lwjgl3arm...
if [ "$MACHINE" = "aarch64" ]; then
    tar -zxf lwjgl3arm64.tar.gz -C ~/lwjgl3arm64
else
    tar -zxf lwjgl3arm32.tar.gz -C ~/lwjgl3arm32
fi

# get run scripts
echo Setup 10/10
wget https://www.dropbox.com/s/3l0v1zhf41wckxt/runMC1_16_1_OptifineG2pre.sh
chmod +x runMC1_16_1_OptifineG2pre.sh  

wget https://www.dropbox.com/s/mjezmw0maox59ou/runLauncher.sh
chmod +x runLauncher.sh

wget https://www.dropbox.com/s/hjndvi50b6nckyj/optifine1_16_1_G2_pre2Install.sh
chmod +x optifine1_16_1_G2_pre2Install.sh
 
echo end setupMC1_16_1