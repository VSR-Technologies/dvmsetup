#!/bin/bash
# This is for trunking sites
# These are legacy and the new systemd files should be used instead
sudo /opt/dvm/bin/dvmhost -c /opt/dvm/bin/VC.yml
sudo /opt/dvm/bin/dvmhost -c /opt/dvm/bin/CC.yml -f
