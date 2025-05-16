#!/usr/bin/env sh

#********************************************
# Author      : lcdse7en
# E-mail      : 2353442022@qq.com
# Create_Time : 2023-10-04 19:52
# Description :
#********************************************

# source /etc/profile.d/import_shell_libs.sh

RED=$(printf '\033[31m')
GREEN=$(printf '\033[32m')
YELLOW=$(printf '\033[33m')
BLUE=$(printf '\033[34m')
SKYBLUE=$(printf '\033[36m')
BOLD=$(printf '\033[1m')
RESET=$(printf '\033[m')

Fcitx5() {
    local fcitx_packages=(
        fcitx5
        fcitx5-unikey
        fcitx5-gtk
        fcitx5-qt
        fcitx5-configtool
        fcitx5-chinese-addons
        fcitx5-material-color
        fcitx5-nord
        fcitx5-lua
        fcitx5-pinyin-zhwiki
        # fcitx5-pinyin-moegirl
        fcitx5-hangul
        kcm-fcitx5
        fcitx5-anthy
        fcitx5-mozc
    )
    sudo pacman -S --noconfirm "${fcitx_packages[@]}"

    sudo tee ~/.pam_enviroment <<-EOF
				INPUT_METHOD=fcitx5
				GTK_IM_MODULE="wayland;fcitx;ibus"
				QT_IM_MODULE=fcitx5
				XMODIFIERS=fcitx5
		EOF
}

main() {
		Fcitx5
}

main
