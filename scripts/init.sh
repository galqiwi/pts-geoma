#!/bin/bash
cat ./problems | while read c; do echo $c; touch $c.sol.tex $c.txt.tex; cp ./zero.png $c.png; done