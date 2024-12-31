#!/bin/bash

# Grab .cue file
for i in */*.cue 
do 
   name=${f%.cue} # Remove '.cue' from file name
   chdman createcd -i "$i" -o "${i%.*}.chd" 
done