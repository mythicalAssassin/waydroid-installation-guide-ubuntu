#!/bin/bash

sudo waydroid shell <<EOF
settings put global captive_portal_mode 0
settings put global captive_portal_detection_enabled 0
setprop net.dns1 8.8.8.8
setprop net.dns2 1.1.1.1
exit
EOF

sudo systemctl restart waydroid-container
