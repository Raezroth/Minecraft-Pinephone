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

For Arch based: `sudo pacman -S jdk-openjdk`

(Optional: Download Fabric: https://fabricmc.net/use/)

Download Forge: https://files.minecraftforge.net/net/minecraftforge/forge/

Download Optifine: https://optifine.net/downloads #Set Optifine in mods folder.

Optional Mods I used for performance. 
---
FORGE:
[Clumps:](https://www.curseforge.com/minecraft/mc-mods/clumps) /
[Connectivity:](https://www.curseforge.com/minecraft/mc-mods/connectivity) /
[DataFixerSlayer:](https://www.curseforge.com/minecraft/mc-mods/datafixerslayer) /
[FastFurnace:](https://www.curseforge.com/minecraft/mc-mods/fastfurnace) /
[FastWorkbench:](https://www.curseforge.com/minecraft/mc-mods/fastworkbench) /
[Limited Chunkloading:](https://www.curseforge.com/minecraft/mc-mods/limited-chunkloading) /
[MCMT:](https://www.curseforge.com/minecraft/mc-mods/mcmt-multithreading)/
[Performant:](https://www.curseforge.com/minecraft/mc-mods/performant) /
[Placebo:](https://www.curseforge.com/minecraft/mc-mods/placebo) 

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


Optional: 
---
1. Set java path to specific java version #I did this to be safe

2. Set Minecraft version.

Hit PLAY! Close when launched to install Forge & Optifine.

Install Forge or Fabric:
                                                  
Navigate to your Forge or Fabric installer, then `java -jar forge-installer.jar`


TESTED ON: 
---

Device: `Pinephone 3gb/32gb`

Distro: `DanctNIX's ArchLinux Mobile`

Controller: `PS5 Dualsense - Bluetooth`

(Note I have changed video settings to low & made edits to mods configuration. I will provide my cfg files if requested.)
