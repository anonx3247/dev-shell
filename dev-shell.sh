#!/bin/sh

programs=$(cat .dev \ # read list of programs from ".dev" file
  | sed 's/#.*$//g' \ # remove comments
  | tr '\n' ' ' \ # change newlines to spaces
  | xargs echo) # remove excess spaces

nix-shell -p $programs