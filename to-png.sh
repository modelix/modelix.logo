#!/bin/sh

rm -rf png
mkdir png

for i in *.svg; do
  cairosvg -s 3 -f png -o "png/${i%.*}.png" "$i"
done
