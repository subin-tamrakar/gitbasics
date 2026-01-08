#!/usr/bin/env bash
#set -euo pipefail
set -x

mkdir -p ./calendar

days=(Sun Mon Tue Wed Thu Fri Sat)

for i in {1..12}; do
     for j in {1..30}; do
        dir="calendar/$i/$j"
        mkdir -p "$dir"

        for day in "${days[@]}"; do
         touch "$dir/$day"
        done
    done
done

