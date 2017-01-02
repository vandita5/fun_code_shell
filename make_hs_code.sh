#!/bin/bash

#
# make_hs_code.sh
# build home system code for several pilot ids
# Vandita Sharma
#


for (( i = 1; i <= 4; i++ )); do
	echo $i
	mkdir PILOT_ID_$i
	make PILOT_ID=$i
	#mkdir build_$i
	cd build
	cd ..
	cp /build/m1_hs.hex PILOT_ID_$i
done
