#!/bin/bash
#
# Description : Winex86 + Box86
# Author      : Jose Cerrejon Gonzalez (ulysess@gmail_dot._com)
# Version     : 1.0.0 (21/May/21)
# Compatible  : Raspberry Pi 4
# Info        : https://github.com/ptitSeb/box86/blob/master/docs/X86WINE.md
#
. ../helper.sh || . ./scripts/helper.sh || . ./helper.sh || wget -q 'https://github.com/jmcerrejon/PiKISS/raw/master/scripts/helper.sh'
clear
check_board || { echo "Missing file helper.sh. I've tried to download it for you. Try to run the script again." && exit 1; }

readonly COMPILE_PATH="$HOME/sc/gl4es"
readonly PACKAGES_DEV=(libx11-dev)
readonly GITHUB_PATH="https://github.com/ptitSeb/gl4es.git"

install() {
    compile_box86
    echo -e "\nInstalling Wine x86..."
    install_winex86
    echo -e "\nDone!."
    exit_message
}

install_script_message
echo "
Install Winex86 + Box86 thks to PtitSeb
=======================================

 · Compile latest Box86 for you.
 · Install Wine X86 32 bits.
 · Use wine <app>
 · It only runs on Raspberry Pi 4.
"

read -p "Press [Enter] to continue or [CTRL]+C to abort..."

install
