#!/usr/bin/env bash

linx () {
  val=$(tput cols)
  x=1
  while [ $x -le $val ]; do
    echo -n X
    x=$((x+1));
  done
}

while true; do 
  df -h;
  echo -e "\e[36m$(linx)\e[0m";
  sleep 10;
  df -i;
  echo -e "\e[32m$(linx)\e[0m";
  sleep 4;
  lsof | grep deleted | grep -v grep;
  sleep 5;
  echo -e "\e[35m$(linx)\e[0m";
  sleep 1;
  w; 
  sleep 4;
  echo -e "\e[32m$(linx)\e[0m";
  sleep 1;
  last | head -n 10;
  linx;
  sleep 4;
  echo -e "\e[36m$(linx)\e[0m";
  uname -a; 
  echo -e "\e[44m$(linx)\e[0m"; 
  sleep 7;
  echo -e "\e[36m$(linx)\e[0m";
  ps auxw | grep ossec | grep -v grep;
  sleep 10;
  linx;
  sleep 0.1;
  linx;
  sleep 0.1;
  linx;
done
   
