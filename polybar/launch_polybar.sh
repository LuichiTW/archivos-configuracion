if type "xrandr"; then
  for m in $(xrandr --query | grep " connected" | cut -d" " -f1); do
    MONITOR=$m polybar --reload top1 &
    MONITOR=$m polybar --reload top2 &
    MONITOR=$m polybar --reload toph &
  done
else
  polybar --reload toph &
  polybar --reload top1 &
  polybar --reload top2 &
fi
