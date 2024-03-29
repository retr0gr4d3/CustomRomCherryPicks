#!/usr/bin/env bash

CYAN='\033[0;36m' # Change text to Cyan.
NC='\033[0m' # Remove colouring.

# Execute this in the root folder of the ROM you have synced.

# Started working on this: Saturday 30th of November, 2019.

# Allow user to flash things in fastbootd when using the kernel cmdline hack to pass safetynet.
printf "${CYAN}+---------------------------------------------------+${NC}"
printf "${CYAN}| Make GetDeviceLockStatus() favor unlocked devices |${NC}"
printf "${CYAN}+---------------------------------------------------+${NC}\n"
cd system/core
git fetch https://github.com/DirtyUnicorns/android_system_core
git cherry-pick bfae7b9df51d4c6e6954bd795a145dc61d0ecaaa
printf "${CYAN}All done!${NC}\n"
printf "${CYAN}+---------------------------------------------------+${NC}"
printf "${CYAN}|         Credit: Surge1223 / DirtyUnicorns         |${NC}"
printf "${CYAN}+---------------------------------------------------+${NC}\n" # ADDED: Sat 30 Nov 8:06 PM

sleep 5

# +-+
# ||
# +-+

#for patch in $(ls patches); do
#    commitid=$(awk -F' ' '{print $2; exit}' patches/$patch)
#    commitmsg=$(sed -n 's/Subject: \[PATCH\] //p' patches/$patch)
#    echo "Applying $commitid - $commitmsg"
#    if ! git apply patches/$patch; then
#        echo " conflict rip"
#    fi
#done
