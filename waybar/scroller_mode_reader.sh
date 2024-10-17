#!/bin/bash

MODE_FILE="/tmp/hyprland_scroller_mode"
OVERVIEW_FILE="/tmp/hyprland_overview"

current_mode=$(cat "$MODE_FILE")
current_overview=$(cat "$OVERVIEW_FILE")

if [[ "$current_overview" == "On" ]]; then
    icon="Overview"
    percent=50
    class="mode-overview"
else
    if [[ "$current_mode" == "Row" ]]; then
        icon="Row"
        percent=0
        class="mode-row"
    elif [[ "$current_mode" == "Column" ]]; then
        icon="Column"
        percent=100
        class="mode-column"
    else
        icon="Row"
        percent=0
        class="mode-row"
    fi
fi


echo "{\"text\":\"$icon\", \"tooltip\":\"Scroller Mode: $current_mode\", \"class\":\"$class\",\"percentage\": $percent}"
