# Minecraft-Pinephone
Setup guide for getting Minecraft running on the PinePhone.


WARNING: YOUR PINEPHONE WILL GET HOT!!! USE IN SINGLE SCREEN WHEN USING CONVERGENCE DOCK. 
---

Make sure you read below!
---
      git clone https://github.com/Raezroth/Minecraft-Pinephone.git ~/Minecraft
      
      cd ~/Minecraft
      
      ./setupMC.sh

Install OpenJDK for Launcher, Forge, & Optifine
---
For ubuntu: `sudo apt install openjdk-11-jdk -y`

(Download + Install .deb file)Install LWJGL 2.9 for older minecraft: https://launchpad.net/ubuntu/disco/arm64/liblwjgl-java-jni/2.9.3+dfsg-5

For Arch based: `sudo pacman -S jdk-openjdk`
LWJGL 2.9 for arch Coming soon. -- Taking longer due other projects and 1.17 not launching due to missing .so files apparently. 

Recommended(Lite): Download Fabric: https://fabricmc.net/use/)

Download Forge: https://files.minecraftforge.net/net/minecraftforge/forge/

Download Optifine: https://optifine.net/downloads #Set Optifine in mods folder.

Optional Mods I used for performance. 
---
FORGE:
[Clumps:](https://www.curseforge.com/minecraft/mc-mods/clumps) /
[Connectivity:](https://www.curseforge.com/minecraft/mc-mods/connectivity) /
[Controllable](https://www.curseforge.com/minecraft/mc-mods/controllable) /
[DataFixerSlayer:](https://www.curseforge.com/minecraft/mc-mods/datafixerslayer) /
[FastFurnace:](https://www.curseforge.com/minecraft/mc-mods/fastfurnace) /
[FastWorkbench:](https://www.curseforge.com/minecraft/mc-mods/fastworkbench) /
[Limited Chunkloading:](https://www.curseforge.com/minecraft/mc-mods/limited-chunkloading) /
[MCMT:](https://www.curseforge.com/minecraft/mc-mods/mcmt-multithreading)/
[Performant:](https://www.curseforge.com/minecraft/mc-mods/performant) /
[Placebo:](https://www.curseforge.com/minecraft/mc-mods/placebo) /
[Smooth Boot](https://www.curseforge.com/minecraft/mc-mods/smooth-boot-forge)

FABRIC:
[Hydrogen](https://github.com/CaffeineMC/hydrogen-fabric) / 
[Lithium](https://github.com/CaffeineMC/lithium-fabric) /
[OptiFabric](https://www.curseforge.com/minecraft/mc-mods/optifabric) /
[Phosphor](https://github.com/CaffeineMC/phosphor-fabric) /
[Sodium](https://github.com/CaffeineMC/sodium-fabric)


If you find anymore information on using this mod list, Please post an issue.
I want to know.

STEPS
---
1. Run setup script.

2. Run launcher via script or preferred method. #You may have to set the path to java

3. Setup Forge or Fabric with Optifine

4. .....

5. PROFITTT!!!!! 

WILL NOT LAUNCH GAME WHEN HITTING PLAY WITHOUT THIS STEP
---
Add `-Dorg.lwjgl.librarypath=/home/$USER/lwjgl3arm64` or `-Dorg.lwjgl.librarypath=/home/$USER/lwjgl3arm32`
into the beginning of JVM Arguments while editing a profile


FAQ
---

Install Forge or Fabric -- Navigate to your Forge or Fabric installer, then `java -jar forge-installer.jar`

Anymore??

TESTED ON: 
---

Device: `Pinephone 3gb/32gb`

Distro: `DanctNIX's ArchLinux Mobile`

Controller: `PS5 Dualsense - Bluetooth`

(Note I have changed video settings to low & made edits to mods configuration. I will provide my cfg files if requested.)
