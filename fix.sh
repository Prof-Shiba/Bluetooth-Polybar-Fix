#!/usr/bin/env bash
set -euo pipefail

for file in */; do
  if [ -d $file ]; then
    cd ${file}/polybar/scripts/
    echo "Currently in: $(pwd)"
    sed -i 's/bluetoothctl version/bluetoothctl -v/g' bluetooth.sh
    echo "Fixed bluetooth.sh!"
      for _ in {1..3}; do
        cd ..
      done
  fi
done

echo "All files properly cleaned!"
