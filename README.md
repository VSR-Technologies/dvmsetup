# VSR TECHNOLOGIES

**DVMHOST SETUP**

credits to the [DVMProject](https://github.com/dvmproject) team for making our trunking possible


Note: Before beginning install Raspberry Pi OS 32bit Lite (Debian Bookworm)

OS Config
  - Hostname: VSR
  - User: pi
  - Password: vsr (any password will work here)
  - Enter WLAN (wifi) Config
  - Enable SSH

### DVMHOST INSTALL
1. Open powershell/terminal on your computer and SSH into your site `ssh pi@VSR`
2. Clone the Repository `git clone https://github.com/DVMProject/dvmhost.git`
3. Build DVMhost (AFter running `make` it could take up to 30 minutes to install. Do not close the SSH terminal)
  - `cd dvmhost`
  - `mkdir build`
  - `cd build`
  - `cmake ..`
  - `make`
4. Install Binaries
  - `make strip`
  - `sudo make old_install`

### How to create and load a configuration
1. Open powershell/terminal on your computer and SSH into your site `ssh pi@VSR`
2. Change into the DVM folder `cd /opt/dvm/bin`
3. Creating the configs
- a. Conventional/DVRS/VOC Trunking
  - create the file `sudo nano config.yml`
  - paste your config by right clicking your cursor 
  - Press CTRL+X, Y, Enter

- b. Trunking
  - create your CC file `sudo nano CC.yml`
  - paste your CC config by right clicking your cursor
  - Press CTRL+X, Y, Enter
  - create your VC file `sudo nano VC.yml`
  - paste your VC config by right clicking your cursor
  - Press CTRL+X, Y, Enter

### How to load your .service files
1. For Conventional `sudo nano /etc/systemd/system/P25.service` Then paste your .service config
2. For Trunking `sudo nano /etc/systemd/system/control.service` Then paste your control channel config, `sudo nano /etc/systemd/system/voice.service` Then paste your voice channel config.


### (LEGACY) Booting your site with bootscripts
1. Open powershell/terminal on your computer and SSH into your site `ssh pi@VSR`
2. Run your start command `sh VSRBOOT.sh` OR `sh VSRBOOT2.sh` for trunking
3. You may either close the terminal or leave it open
