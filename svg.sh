#!/bin/bash
cat problems | while read c; do svg2png $c.svg $c.png -w 2000 -h 2000; echo $c png done; done
