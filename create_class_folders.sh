#!/bin/bash

for week in 0{1..9} {10..12}; do
  for day in 0{1..4}; do
    mkdir ./classwork/week$week-day$day
    touch ./classwork/week$week-day$day/README.md
  done
done
