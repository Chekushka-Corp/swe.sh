#!/usr/bin/env bash
clear
x=2
y=2
swp="P"
ox=$x
oy=$y
tput civis
trap "tput cnorm; clear; exit" EXIT
while true; do
printf "\033[%d;%dH " "$oy" "$ox"
printf "\033[%d;%dH%s" "$y" "$x" "$swp"
ox=$x
oy=$y
read -n 1 -s key
if [[ -z "$key" ]]; then
echo "empty var"
exit
elif [[ "$key" == "w" ]]; then
y=$((y - 1))
elif [[ "$key" == "s" ]]; then
y=$((y + 1))
elif [[ "$key" == "d" ]]; then
x=$((x + 1))
elif [[ "$key" == "a" ]]; then
x=$((x - 1))
elif [[ "$key" == "y" ]]; then
echo "y: $y"
elif [[ "$key" == "x" ]]; then
echo "x: $x"
elif [[ "$key" == "p" ]]; then
echo "x: $x y: $y"
elif [[ "$key" == "c" ]]; then
clear
fi
done
