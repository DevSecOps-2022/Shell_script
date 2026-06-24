#!/bin/bash

MOVIES=("RRR" "VARANASI" "PUSHPA")

echo "Movies are:\n%s\n" "${MOVIES[@]}"
echo "First Movie is:${MOVIES[0]}"
echo "Second Movie is:${MOVIES[1]}"
echo "Third Movie is:${MOVIES[2]}"