#!/bin/sh
# Finds the upper and lower db in a hackrf_sweep/rtl_power csv
cut -f7- -d, $1 | tr -d " " | tr "," "\n" | sort -n  | head -n 1
cut -f7- -d, $1 | tr -d " " | tr "," "\n" | sort -n  | tail -n 1
