#!/bin/bash

# Grab .cue file
for i in */*.chd 
do 
   name=${f%.chd} # Remove '.chd' from file name
   chdman extractcd -i "$i" -o "${i%.*}.cue" 
done