#!/bin/bash
# Script with basic network commands

# Color Variables

blackwhite=$(tput setab 0)
red=$(tput setaf 1)
green=$(tput setab 0; tput setaf 2)
white=$(tput setab 7)
close=$(tput sgr0)


# Date and Time

echo 
echo $white"                                  "$close
date=`date +"%d-%m-%y"`
time=`date +"%H:%M:%S"`
echo "Date: $date 🕛 Time: $time"
echo $white"                                  "$close
echo


# Model Name

model=`system_profiler SPHardwareDataType | grep "Model Name" | cut -d : -f2`
printf "$blackwhite Model Name:$close\t$green$model$close\n"
echo $red"-------------------------------"$close

# Serial Number 

serial=`system_profiler SPHardwareDataType | grep "Serial Number" | cut -d : -f2`
printf "$blackwhite Serial Number:$close\t$green$serial$close\n"
echo $red"-------------------------------"$close

# Free Space

space=`df -h / | grep -E "\/$" | awk '{print $4}'`
printf "$blackwhite Free Space:$close\t$green$space$close\n"
echo $red"-------------------------------"$close

# Find my IP

ip=`ipconfig getifaddr en0`
printf "$blackwhite IP Address:$close\t$green$ip$close\n"
echo $red"-------------------------------"$close

# en0 Subnet Mask

smask=`ipconfig getoption en0 subnet_mask`
printf "$blackwhite Subnet Mask:$close\t$green$smask$close\n"
echo $red"-------------------------------"$close


exit 0
