#!/bin/bash
CURRENT=$(curl -sf "wttr.in/?format=%C+%t" 2>/dev/null)
TOOLTIP=$(curl -sf "wttr.in/?format=%l:+%C,+%t+%w+%h" 2>/dev/null)

if [[ -z "$CURRENT" ]]; then
    echo '{"text": "N/C", "tooltip": "No connection"}'
else
    echo "{\"text\": \"${CURRENT}\", \"tooltip\": \"${TOOLTIP}\"}"
fi
