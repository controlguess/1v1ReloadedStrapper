#!/bin/bash

SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"

cd "$SCRIPT_DIR"

export WINEPREFIX="$HOME/.wine"

echo "[?] Attempting to launch..."

# Try common names
if [ -f "1v1LOL.exe" ]; then
    echo "[!] Starting 1v1.LOL Reborn..."
    wine 1v1LOL.exe
elif [ -f "1v1_LOL.exe" ]; then
    echo "[!] Starting 1v1.LOL Reborn..."
    wine 1v1_LOL.exe
else
    echo "[ERROR] Could not find any files for 1v1.LOL Reborn!"
    echo "[?] Files in current directory:"
    ls -la *.exe 2>/dev/null || echo "None (1v1LOL.exe or 1v1_LOL.exe needed)"
    exit 1
fi
