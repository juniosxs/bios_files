#!/bin/bash

# Grab .chd file
for f in PS1/*/*.chd
do
	name=${f%.chd} # Remove '.chd' from file name
	chdman extractcd -i "$name.chd" -o "$name.cue" -ob "$name.iso" --force
done
