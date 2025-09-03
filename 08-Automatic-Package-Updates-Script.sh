#!/bin/bash
# Update system packages and clean up unnecessary packages
apt-get update && apt-get upgrade -y && apt-get autoremove -y && apt-get
clean
echo "System packages updated and cleaned up"


#Explanation
#• apt-get update: Updates the package list.
#• apt-get upgrade -y: Upgrades all installed packages.
#• apt-get autoremove -y: Removes unnecessary packages.
#• apt-get clean: Cleans up the package cache.
#• echo "System packages updated and cleaned up": Outputs a message indicating
#the completion of the update and cleanup
