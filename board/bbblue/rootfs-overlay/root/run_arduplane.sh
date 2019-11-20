#!/bin/sh


# -A Switch
AP_CONSOLE="/dev/ttyS1"
# -B Switch
AP_GPS="/dev/ttyS2"
# -C Switch
AP_TELEM1="/dev/ttyS5"
# -D Switch
#AP_TELEM2="/dev/ttyS5"
# -E Switch
#AP_UNAMED1="/dev/ttyS5"
# -F Switch
#AP_UNAMED2="/dev/ttyS5"
# -G Switch
#AP_UNAMED3="/dev/ttyS5"
# -H Switch
#AP_UNAMED4="/dev/ttyS5"

# -l Switch
AP_LOG_DIR="/var/APM/logs"
# -t Switch
AP_MAP_DIR="/var/APM/terrain"
# -M Switch
AP_MOD_DIR="/usr/lib/ardupilot"


/usr/bin/ardupilot/arduplane -l ${AP_LOG_DIR} -A ${AP_CONSOLE} -B ${AP_GPS} -C ${AP_TELEM1}&
