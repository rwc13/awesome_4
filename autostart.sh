#!/usr/bin/env bash

function run {
  if ! pgrep $1 ;
  then
    $@&
  fi
}

run "compton"
run "nm-applet"
run "mpd"
pkill conky

sleep 3
run "conky -c /home/reed/.config/awesome/conky/conkyrc"
