#!/bin/bash -x

declare -A sounds
sounds[dog]="bark"
sounds[cow]="moo"
sounds[bird]="tweet"
sounds[wolf]="howl"

echo "Dog sounds " ${sounds[dog]} # Dog's sound
echo "All animal sound " ${sounds[@]} # All values
echo "Animal " ${!sounds[@]} # All keys
echo "Number of animals " ${#sounds[@]} # Number of elements
unset sounds[dog] sounds[cow] # Delete dog

echo "Animals left " ${!sounds[@]} # Animal left after deletion
