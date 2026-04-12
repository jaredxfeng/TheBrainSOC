#!/bin/bash
cd "$(dirname "$0")" || exit 1

# Make sure config dir exists
mkdir -p ~/.config/brain-battery

if [ ! -d "../node_modules" ]; then
  pnpm install --frozen-lockfile --silent
fi

pnpm exec tsx ./brainBattery.ts >> ./brain-battery.log 2>&1
