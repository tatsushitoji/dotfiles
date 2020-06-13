#!/bin/bash

dockutil --no-restart --remove all

killall Dock

echo "Success! Dock cleaning is finished."
