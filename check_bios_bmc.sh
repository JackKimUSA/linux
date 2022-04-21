#!/bin/bash
############################################################
#
#
#       Date Released: 04/20/2022
#
#
#       Description: Check BIOS and BMC Information
#
#
#       Revisions:
#       DATE            MODIFIED BY     SUMMARY
#       04/20/2022      Jack Kim        Initial Release
#
#############################################################

# Title
printf "%-20s" "BIOS_Ver"
printf "%-20s" "BIOS_Date"
printf "%-10s" "BMC_Ver"
printf "\n"

# Main
printf "%-20s" "$(dmidecode -s bios-version)"
printf "%-20s" "$(dmidecode -s bios-release-date)"
printf "%-10s" "$(cat /sys/class/ipmi/ipmi0/device/bmc/firmware_revision)"
printf "\n"

