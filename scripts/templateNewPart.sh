#!/usr/bin/env bash

pushd $(dirname "${0}") >> /dev/null
	pushd ../ >> /dev/null

		read -p "Part Name: " PartName
		read -p "Part Description: " PartDescription
		
		echo "${PartName}"
		mkdir "./${PartName}/"
		
		pushd "./${PartName}/" >> /dev/null
			mkdir src bin vendor
			touch ./src/.gitkeep
			touch ./bin/.gitkeep
			touch ./vendor/.gitkeep
			echo "# ${PartName}" > README.md
			echo "" >> README.md
			echo "## ${PartDescription}" >> README.md
		popd >> /dev/null

	popd >> /dev/null

popd >> /dev/null
