# VSR TECHNOLOGIES

**DVMHOST CONFIGURATION**

Note: Before beginning install Raspberry Pi OS 32bit Lite (Debian Bookworm)

OS Config
  - User: pi
  - Password: vsr (any password will work here)
  - Enter WLAN Config
  - Enable SSH

### How to load a configuration
1. SSH into your site `ssh pi@VSR`
2. Change into the DVM folder `cd /opt/dvm/bin`

  a. Convetional/DVRS/VOC Trunking
  create the file `sudo nano config.yml`
   
  paste your config by right clicking your cursor
   
  CTRL+X, Y, Enter
   
  b. Trunking
  create your CC file `sudo nano CC.yml`

  paste your CC config by right clicking your cursor

  Press CTRL+X, Y, Enter
  
  create your VC file `sudo nano VC.yml`
  
  paste your VC config by right clicking your cursor
  
  Press CTRL+X, Y, Enter

### Starting your site
1. SSH into your site `ssh pi@VSR`
2. Run your start command `sh VSRBOOT.sh`
