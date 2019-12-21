#!/bin/bash

# xrandr --auto --output HDMI1 --same-as eDP1 --size 1920x1080
# 状态栏
/bin/bash ./dwm-status.sh &
# 更换壁纸
/bin/bash ./wp-autochange.sh &
# 窗口渲染器
picom -o 0.95 -i 0.88 --detect-rounded-corners --vsync --blur-background-fixed -f -D 5 -c -b

# 触控板
# /bin/bash ./tap-to-click.sh &
# /bin/bash ./inverse-scroll.sh &
# /bin/bash ./setxmodmap-colemak.sh &
nm-applet &
xfce4-power-manager &
xfce4-volumed-pulse &
/bin/bash ./run-mailsync.sh &
# 打开输入法
./autostart_wait.sh &
