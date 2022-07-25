#! /bin/bash

MSG="[usage]: ./run-smpl.sh [simulate | simulateoffline] [config name eg. sphere] [--output FOLDER NAME]"

if [ $# == 2 -o $# == 3 -o $# == 4 ]; then
	
	if [ $# == 2 ]; then

		if [ $1 == 'simulate' -o $1 == 'simulateoffline' ]; then
			if [[ ! -f "./conf/$2.json" ]]; then
				echo "./conf/$2.json doesn't exist!"
				exit 1
			fi
			# ./run simulate sphere
			./bin/arcsim $1 ./conf/$2.json
		elif [ $1 == 'replay' ]; then
			if [[ ! -d "./output/$2" ]]; then
				echo "./output/$2 doesn't exist!"
				exit 1
			fi
			# ./run replay sphere
			./bin/arcsim $1 ./output/$2
		else
			echo $MSG
		fi

	elif [ $# == 3 ]; then
		if [[ ! -f "./conf/$2.json" ]]; then
			echo "./conf/$2.json doesn't exist!"
			exit 1
		fi

		if [ $3 == "--output" ]; then
			# ./run simulate sphere --output
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
			if [[ ! -d ./output/$2 ]]; then
				mkdir -p ./output/$2
			fi
			rm -rf ./output/$2/$4
			mkdir -p ./output/$2/$4
			./bin/arcsim $1 ./conf/$2.json ./output/$2/$4
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

