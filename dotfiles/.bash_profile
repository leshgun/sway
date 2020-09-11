#
# ~/.bash_profile
#


# Default aps
export EDITOR=nano
export BROWSER=firefox

# QT
export QT_QPA_PLATFORM=wayland-egl
export QT_QPA_PLATFORMTHEME=qt5ct
export QT_WAYLAND_DISABLE_WINDOWDECORATION=1

#EFL
export ECORE_EVAS_ENGINE="wayland_egl"
export ELM_ACCEL="gl"

# Firefox
export MOZ_ENABLE_WAYLAND=1

# SDL
export SDL_VIDEODRIVER=wayland


[[ -f ~/.bashrc ]] && . ~/.bashrc
