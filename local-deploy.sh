#!/bin/bash
set -e

PLUGIN_DIR=~/Library/Mobile\ Documents/iCloud~md~obsidian/Documents/icloud-notes-obisian/.obsidian/plugins/explain-selection-with-ai

npm install --legacy-peer-deps &&
node esbuild.config.mjs production &&
cp main.js manifest.json styles.css "$PLUGIN_DIR/"

echo "Deployed to $PLUGIN_DIR"
