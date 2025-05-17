#!/usr/bin/bash

#********************************************
# Author      : lcdse7en                    *
# E-mail      : 2353442022@qq.com           *
# Create_Time : 2024-07-14 04:41:05         *
# Description :                             *
#********************************************

# source /etc/profile.d/import_shell_libs.sh

RED=$(printf '\033[31m')
GREEN=$(printf '\033[32m')
YELLOW=$(printf '\033[33m')
BLUE=$(printf '\033[34m')
SKYBLUE=$(printf '\033[36m')
BOLD=$(printf '\033[1m')
RESET=$(printf '\033[m')

sudoers-edit() {
    sudo tee /etc/sudoers <<-EOF
				root ALL=(ALL:ALL) ALL

				%wheel ALL=(ALL:ALL) ALL
				se7en ALL=(ALL) NOPASSWD: ALL
				se7en ALL=(ALL) NOPASSWD: /usr/bin/tee /etc/hosts

				@includedir /etc/sudoers.d
				EOF
}

main() {
    sudoers-edit
}

main
