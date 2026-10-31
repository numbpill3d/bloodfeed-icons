#!/usr/bin/env bash
# Bloodfeed — Icons — install.  ./install.sh
set -euo pipefail
HERE=$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)
DST=${XDG_DATA_HOME:-$HOME/.local/share}/icons/Bloodfeed
rm -rf "$DST"; mkdir -p "$DST"
cp -a "$HERE"/index.theme "$HERE"/scalable "$HERE"/scalable@2x "$HERE"/16 "$HERE"/16@2x "$HERE"/22 "$HERE"/22@2x "$HERE"/24 "$HERE"/24@2x "$HERE"/32 "$HERE"/32@2x "$HERE"/symbolic "$DST"/ 2>/dev/null || true
/usr/lib/plasma-changeicons Bloodfeed 2>/dev/null || echo "Pick Bloodfeed in System Settings > Icons."
