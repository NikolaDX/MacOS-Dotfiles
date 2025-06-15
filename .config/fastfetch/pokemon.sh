#!/bin/bash
# Save as ~/.local/bin/pokemon-for-fastfetch.sh
# Make executable with: chmod +x ~/.local/bin/pokemon-for-fastfetch.sh

# Random Pokémon ID
ID=$(( RANDOM % 1025 + 1 ))

# Get high-res artwork
URL=$(curl -s "https://pokeapi.co/api/v2/pokemon/$ID" | jq -r '.sprites.other["official-artwork"].front_default')

# Fallback if no image
if [ "$URL" == "null" ] || [ -z "$URL" ]; then
    # Try a different Pokémon if this one fails
    ID=$(( RANDOM % 1025 + 1 ))
    URL=$(curl -s "https://pokeapi.co/api/v2/pokemon/$ID" | jq -r '.sprites.other["official-artwork"].front_default')
fi

# If still no image, use a default
if [ "$URL" == "null" ] || [ -z "$URL" ]; then
    URL="https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/25.png" # Pikachu as fallback
fi

# Download image to temp location
IMG="/tmp/pokemon_current.png"
curl -s -o "$IMG" "$URL"

# Output the image path for fastfetch to use
echo "$IMG"
