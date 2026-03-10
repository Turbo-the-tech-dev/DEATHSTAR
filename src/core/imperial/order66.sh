#!/bin/bash
# --- ORDER 66: GLOBAL PROCESS FLUSH ---
# Purpose: Terminate all non-essential 'Rebel' threads.

LOYALISTS=("bash" "sh" "gh" "git" "node" "ssh")
echo '👑 EMPEROR: Executing Order 66...'

# Get all running processes for the current user
ps -u $(whoami) -o comm=,pid= | while read -r cmd pid; do
    is_loyal=false
    for loyal in "${LOYALISTS[@]}"; do
        if [[ "$cmd" == *"$loyal"* ]]; then
            is_loyal=true
            break
        fi
    done

    if [ "$is_loyal" = false ]; then
        echo "⚡ Force-Choking Rebel Process: $cmd (PID: $pid)"
        kill -9 $pid 2>/dev/null
    fi
done

echo '🌌 THE GALAXY IS AT PEACE. ONLY THE CORE REMAINS.'
