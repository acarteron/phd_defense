#!/bin/bash

# Run `impressive' with a few arguments.  Remember, `r` key resets the
# running timer.

# First, find the directory i'm in:
script="`readlink -f "${BASH_SOURCE[0]}"`"
dir="`dirname "$script"`"

echo $dir

impressive --duration 45:00 -T 0 $dir/pres.pdf
