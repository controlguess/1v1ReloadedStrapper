#!/bin/bash

SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"

cd "$SCRIPT_DIR"

export WINEPREFIX="$HOME/.wine"

echo "[?] Latest update: 8/1/26"
echo "[?] Attempting to launch with optimized flags..."

export WINEFSYNC=1
export WINEESYNC=1
export WINE_LARGE_ADDRESS_AWARE=1

export WINEDEBUG=-all

export DXVK_FRAME_RATE=60
export DXVK_LOG_LEVEL=none

export WINE_FULLSCREEN_FSR=1
export WINE_FULLSCREEN_FSR_STRENGTH=5

if [ -f "1v1LOL.exe" ]; then
    echo "[!] Starting 1v1.LOL Reloaded..."
    wine 1v1LOL.exe
elif [ -f "1v1_LOL.exe" ]; then
    echo "[!] Starting 1v1.LOL Reloaded..."
    wine 1v1_LOL.exe
else
    echo "[ERROR] Could not find any files for 1v1.LOL Reloaded!"
    echo "[?] Files in current directory:"
    ls -la *.exe 2>/dev/null || echo "None (1v1LOL.exe or 1v1_LOL.exe needed)"
    exit 1
fi
