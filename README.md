# homekit-Hub
Cheap Homekit Hub based on an old Jailbreak iPhone

The objective of this project is to have a cheap Homekit Hub based on a old iphone.
The problem is to have an iphone always connected to outlet and in fact, a good solution is 
to charge the iphone only when needed (if battery drops under 20% and is not above 80%).

# What do you need
- An old Iphone with iOS 13 or above
- Jailbreak App (checkrain)
- Cydia
- Smart Outlet

# Setup

1) Jailbreak the iphone and install Cydia
2) in Cydia, install the following tweaks : 
- HomeKit Remote Hub Enabler (the most important !)
- Fiona (wifi always connected)
- noLowPowerAlert (disable low power alert)
- openSSH (to have access to the iphone in SSH)

3) Tweaks activations
- Enable HomeKit Remote Hub Enaber in Systems / Home (use this ipad as hub) !
- Enable Fiona in settings
- Enable SSH in settings (toggle to ON SSH, PermitRootLogin, Allow Password Auth)

4) For home automation

Connect the iphone to a cheap outlet (ikea for example) and make an automation that : 

Retrieve the battery status with the script provided (don't forget to modify IP adress of your iphone).

Make an automation to toggle to OFF  the outlet when battery is above 80% and to ON when battery is under 20%

Enjoy !








