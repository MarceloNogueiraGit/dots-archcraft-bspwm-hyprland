#!/bin/bash

ACTIVE=$(hyprctl activewindow -j)
TITLE=$(echo $ACTIVE | jq -r '.title')

if [[ "$TITLE" == "null" ]] || [[ "$TITLE" == "" ]]; then
	TEXT=" $(whoami)"
	TOOLTIP="$(uname -r)"
else
	TEXT=" ${TITLE}"
	TOOLTIP="class: $(echo $ACTIVE | jq -r '.class')\nxwayland: $(echo $ACTIVE | jq -r '.xwayland')"
fi

JSON=$(echo "{\"text\":\"${TEXT}\", \"tooltip\":\"${TOOLTIP}\"}" | sed 's/&/\&amp;/g')

echo "${JSON}"
