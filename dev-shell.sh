#!/bin/sh

programs=$(sed 's/#.*$//g' .dev | # remove comments
  tr '\n' ' ' | # change newlines to spaces
  xargs echo) # remove excess spaces

nix-shell -p $programs