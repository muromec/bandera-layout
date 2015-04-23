#!/usr/bin/env bash

if [[ "$OSTYPE" == "darwin"* ]]; then

KBD_DIR=/Library/KeyboardLayouts
sudo mkdir -p $KBD_DIR
sudo cp -r Cyrillic\ bilingual.bundle $KBD_DIR

osascript 3<&0 << APPLESCRIPT 2>&1 1>/dev/null
  tell application "System Preferences"
    activate
    reveal anchor "InputSources" of pane id "com.apple.preference.keyboard"
  end tell
APPLESCRIPT

else
  echo $OSTYPE 'is not supported'
fi
