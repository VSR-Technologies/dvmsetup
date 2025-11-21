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

### Auto Install

You can automatically install DVMhost and the systemctl services by running the commands below

1. SSH IN A TERMINAL FIRST! `ssh pi@vsr`
2. Clone the Repository `git clone https://github.com/VSR-Technologies/dvmsetup.git`
3. Change to the directory `cd dvmsetup`

- Conventional/DVRS/VOC `sudo sh VSRbasicsetup.sh`
- Trunking `sudo sh VSRsetup.sh`

Your site will say "INSTALL SUCCESS" and reboot when finished.

### MANUAL DVMHOST INSTALL
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
  - `make tarball`
  - `sudo tar xvzf dvmhost_R04Gxx_<arch>.tar.gz -C /opt`
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

### Manually Enabling your site
1. Open powershell/terminal on your computer and SSH into your site `ssh pi@VSR`
2. Clone the DVMsystemd repository `git clone https://github.com/VSR-Technologies/DVMsystemd.git`
3. Change to the directory `cd DVMsystemd` and `cd systemctl`
4. Enable the systemd service
- a. Conventional/DVRS/VOC Trunking
  - Move the service to systemctl `sudo mv ./P25.service /etc/systemd/system`
  - Return to /home/pi `cd`
  - Enable the service `sudo systemctl enable P25.service`
  - Reboot the system `sudo reboot`
  - Your site will now automatically boot when the site is powered on

- b. Trunking
  - Move the Control Channel service to systemctl `sudo mv ./cc.service /etc/systemd/systeml`
  - Move the Voice Channel service to systemctl `sudo mv ./vc.service /etc/systemd/system`
  - Enable Control Channel service `sudo systemctl enable cc.service`
  - Enable Voice Channel service `sudo systemctl enable vc.service`
  - Reboot the system `sudo reboot`
  - Your site will now automatically boot when the site is powered on

### (LEGACY) Booting your site with bootscripts
1. Open powershell/terminal on your computer and SSH into your site `ssh pi@VSR`
2. Run your start command `sh VSRBOOT.sh` OR `sh VSRBOOT2.sh` for trunking
3. You may either close the terminal or leave it open
