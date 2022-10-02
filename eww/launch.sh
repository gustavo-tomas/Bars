#!/bin/sh

eww daemon # not clean but works
WINDOWS=$(eww windows)
if [[ $WINDOWS == *"*"* ]] # check if windows are open
then
    eww reload
else
    eww open bar && eww open dashboard
fi
