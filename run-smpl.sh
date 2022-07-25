#! /bin/bash

MSG="[usage]: ./run-smpl.sh [simulate | simulateoffline] [config name eg. sphere] [--output FOLDER NAME]"

if [ $# == 2 -o $# == 3 -o $# == 4 ]; then
	
	if [ $# == 2 ]; then

		if [ $1 == 'simulate' -o $1 == 'simulateoffline' ]; then
			if [[ ! -f "./conf/$2.json" ]]; then
				echo "./conf/$2.json doesn't exist!"
				exit 1
			fi
			# ./run-smpl simulate smpl
			./bin/arcsim $1 ./conf/$2.json
		else
			echo $MSG
		fi

	elif [ $# == 3 ]; then
		if [[ ! -f "./conf/$2.json" ]]; then
			echo "./conf/$2.json doesn't exist!"
			exit 1
		fi

		if [ $3 == "--output" ]; then
			# ./run-smpl simulate smpl --output
			rm -rf ./output/$2
			mkdir -p ./output/$2
			./bin/arcsim $1 ./conf/$2.json ./output/$2
		else
			echo $MSG
		fi

	elif [ $# == 4 ]; then
		if [[ ! -f "./conf/$2.json" ]]; then
			echo "./conf/$2.json doesn't exist!"
			exit 1
		fi

		if [ $3 == "--output" ]; then
			# ./run simulate sphere --output folder
			rm -rf ./output/$4
			mkdir -p ./output/$4
			./bin/arcsim $1 ./conf/$2.json ./output/$4
		else
			echo $MSG
		fi

	else
		echo $MSG
	fi

else

	echo $MSG
	exit 1

fi

