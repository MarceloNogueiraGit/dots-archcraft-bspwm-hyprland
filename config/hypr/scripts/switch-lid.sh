#!/bin/bash

if grep open /proc/acpi/button/lid/LID/state; then
    hyprctl keyword monitor "HDMI-A-1, 2560x1080@75, 0x0, 1"
else
    if [[ `hyprctl monitors | grep "Monitor" | wc -l` != 1 ]]; then
        hyprctl keyword monitor "HDMI-A-1, disable"
    fi
fi
