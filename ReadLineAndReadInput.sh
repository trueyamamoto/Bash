#!/bin/bash

LIST="./list.txt"

while read LINE <&3
do
  read KEY
  echo $KEY $LINE
done 3< $LIST
