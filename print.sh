#!/usr/bin/env bash

# lpoptions -d print-name # 设置默认打印机
# lp -n 3 test.pdf # 设置打印份数
# lp -P 1-3 test.pdf # 指定页面范围
# lp -o portrait test.pdf # 纵向打印（默认）
# lp -o landscape test.pdf # 横向打印
# lp -o sides=two-sided-long-edge test.pdf # 双面打印
#
# lpstat -o # 列出所有打印任务
# cancel 打印任务编号 # 取消打印任务

#  NOTE: lp -d HP_LaserJet_Pro_MFP_M126a -o media=A4 -o orientation-requested=3 test.pdf

printer-install() {
    sudo pacman -S --noconfirm cups hplip system-config-printer
    sudo systemctl enable --now cups
}

printer-setting() {
    lpstat -p # 列出所有打印机
    myprinter="HP_LaserJet_Pro_MFP_M126a"
    lpoptions -d $myprinter # 设置默认打印机
    lpstat -d               # 列出默认打印机
}

main() {
    printer-install
    printer-setting
}

main
