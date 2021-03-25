result=$(ps ax|grep -v grep|grep trayer)
if [ "$result" == "" ]; then
  eval  "trayer --transparent false --expand false --align right --edge top --width 20 --margin 20 --padding 10 --iconspacing 5 --SetDockType false --tint 0x88888888 &"
else
  eval "killall trayer"
fi
