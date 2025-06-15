#!/bin/bash

# Required parameters:
# @raycast.schemaVersion 1
# @raycast.title Nix rebuild
# @raycast.mode fullOutput

# Optional parameters:
# @raycast.icon 🤖
# @raycast.packageName nix utils
# @raycast.needsConfirmation true

# Documentation:
# @raycast.description Nix-darwin config rebuild
# @raycast.author Nikola

darwin-rebuild switch --flake ~/.config/nix/.#air
