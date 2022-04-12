#!/bin/bash
input="./france.txt"
while IFS= read -r line
do
  depId=${line:14:2}
  mkdir -p "./france/$depId/"
  touch "./france/$depId/vector.svg"
  echo $line > "./france/$depId/vector.svg"
  echo "$depId"
done < "$input"