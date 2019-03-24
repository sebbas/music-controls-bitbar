#!/bin/bash
pwd=$(pwd)
fold="$HOME/.config/pianobar"
stl="$fold/stations"
ctlf="$fold/ctl"
ply="$fold/playing"

while read L; do
        k="`echo "$L" | cut -d '=' -f 1`"
        v="`echo "$L" | cut -d '=' -f 2`"
        export "$k=$v"
done < <(grep -e '^\(title\|artist\|album\|stationName\|pRet\|pRetStr\|wRet\|wRetStr\|songDuration\|songPlayed\|rating\|songDuration\|songPlayed\|coverArt\|stationCount\|station[0-9]\+\)=' /dev/stdin)

case "$1" in

  songstart)
    echo -e "$artist\n$title\n$album\n$stationName\n$rating\n$coverArt" > "$ply"
  ;;

  songlove)
    echo -e "$artist\n$title\n$album\n$stationName\n$rating\n$coverArt" > "$ply"
  ;;

  usergetstations)
    if [[ $stationCount -gt 0 ]]; then
      rm -f "$stl"
      for stnum in $(seq 0 $(($stationCount-1))); do
        echo "$stnum) "$(eval "echo \$station$stnum") >> "$stl"
      done
    fi
  ;;

esac
