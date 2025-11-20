#!/bin/bash
# This is for trunking sites
sudo /opt/dvm/bin/dvmhost -c /opt/dvm/bin/VC.yml
sudo /opt/dvm/bin/dvmhost -c /opt/dvm/bin/CC.yml -f
