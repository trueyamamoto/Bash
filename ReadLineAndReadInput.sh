#!/bin/bash

LIST="./list.txt"

while read LINE <&3
do
  read KEY
  echo $KEY $LINE
done 3< $LIST

# A file redirected to a while loop is received by the read command as standard input 0.
# So that force the file to be redirected as a third file descriptor.
