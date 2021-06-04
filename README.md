# Minecraft-Pinephone
Setup guide for getting Minecraft running on the PinePhone.


WARNING: YOUR PINEPHONE WILL GET HOT!!! USE IN SINGLE SCREEN WHEN USING CONVERGENCE DOCK. 

Install OpenJDK for Launcher, Forge, & Optifine
------------------------------------------------
For ubuntu: sudo apt install openjdk-11-jdk -y
For Arch based: sudo pacman -S jdk-openjdk

Download Forge: https://files.minecraftforge.net/net/minecraftforge/forge/

Download Optifine: https://optifine.net/downloads #Set Optifine in mods folder.

Optional Mods I used for performance. 
--------------------------------------
Clumps: https://www.curseforge.com/minecraft/mc-mods/clumps

Connectivity: https://www.curseforge.com/minecraft/mc-mods/connectivity

DataFixerSlayer: https://www.curseforge.com/minecraft/mc-mods/datafixerslayer

FastFurnace: https://www.curseforge.com/minecraft/mc-mods/fastfurnace

FastWorkbench: https://www.curseforge.com/minecraft/mc-mods/fastworkbench

Limited Chunkloading: https://www.curseforge.com/minecraft/mc-mods/limited-chunkloading

MCMT: https://www.curseforge.com/minecraft/mc-mods/mcmt-multithreading

Performant: https://www.curseforge.com/minecraft/mc-mods/performant

Placebo: https://www.curseforge.com/minecraft/mc-mods/placebo

If you find anymore information on using this mod list, Please post an issue.
I want to know.

Run setup script.
Run launcher via script or preferred method. #You may have to set the path to java

   #use this one for the pinephone                    #doesn't work unless kernel supports 32bit
Add -Dorg.lwjgl.librarypath=/home/$USER/lwjgl3arm64 or -Dorg.lwjgl.librarypath=/home/$USER/lwjgl3arm32
into the beginning of JVM Arguments 


Optional: 
------------
Set java path to specific java version #I did this to be safe
Set Minecraft version.

Hit PLAY! Close when launched to install Forge & Optifine.

Install Forge:
                                                  #path-to-jar
Navigate to your Forge installer, then java -jar forge-installer.jar

(Note I have changed video settings to low & made edits to mods configuration)
