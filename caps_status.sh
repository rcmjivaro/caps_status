#!/bin/bash
#
# caps_status.sh
#
# Robert Montgomery 9/22/2022
#
# add 'generic monitor' to the xfce panel. 
# Open properties, enter the path to this script. Set period as desired.

status=$(xset -q | awk '/Caps/{print "-"$4"-"}'|tr "[a-z]" "[A-Z]")
PANEL="<txt>$status</txt>"
TOOLTIP="<tool>"
TOOLTIP+="Caps lock status"
TOOLTIP+="</tool>"
  echo -e "${PANEL}"
  echo -e "${TOOLTIP}"
