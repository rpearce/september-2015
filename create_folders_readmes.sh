#!/bin/bash

echo "Creating ${1} folder..."

mkdir -p $1

for week in 0{1..9}; do
  for day in 0{1..4}; do
    mkdir $1/week$week-day$day
    touch $1/week$week-day$day/README.md
  done
done
