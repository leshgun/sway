#!/bin/sh

#systemctl --user import-environment DISPLAY XAUTHORITY
systemctl --user import-environment DISPLAY

if command -v dbus-update-activation-environment >/dev/null 2>&1; then
    dbus-update-activation-environment DISPLAY XAUTHORITY
fi
