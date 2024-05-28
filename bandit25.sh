#!/bin/bash

#For loop to generate 4-digit pin, use the pin combination and the password to level 24 and try connect to localhost via port 30002 to get the 
#password to level 25

#Possibilites.txt => file with the pin combinations created.
#results.txt => file with the results after connection trial.

#hint: use grep -v "Wrong" while reading the results.txt file (cat results.txt | grep -v "Wrong") => this will display the line with the correct password.

for i in {0000..9999}
do 
        echo VAfGXJ1PBSsPSnvsjI8p759leLZ9GGar $i >> possibilities.txt
done

cat possibilities.txt | nc localhost 30002 > results.txt
