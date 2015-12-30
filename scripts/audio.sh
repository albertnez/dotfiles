if amixer get Master -c 0 | grep -q off
then
    amixer -c 0 set Master unmute
    amixer -c 0 set Headphone unmute
    amixer -c 0 set Speaker unmute
else
    amixer -c 0 set Master mute
    amixer -c 0 set Headphone mute
    amixer -c 0 set Speaker mute
fi

