#!/bin/bash
rm *.o
make

total=0

for i in {1..10}; do

res1=`date +%s.%N`
./process ./images/cube.png cube_processed.png
./process ./images/earth.png earth_processed.png
./process ./images/sparty.png sparty_processed.png
./process ./images/MSUstadium.png MSU_processed.png
res2=`date +%s.%N`

dt=$(echo "$res2 - $res1" | bc)

printf "$i: %02.6f\n" $dt

total=$(echo "$total + $dt" | bc)
 
done

printf "Total runtime:  %02.6f\n" $total

average=$(echo "scale=6; $total/$i" | bc)

printf "Average runtime: $average\n"




