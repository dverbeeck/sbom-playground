#!/bin/bash

projectName='mope'

dotheThings() { sleep 5; }
for outputType in cyclonedx-json template cyclonedx-xml spdx-tag-value #syft-json cyclonedx-xml github-json spdx-tag-value spdx-json syft-table sytf-text template
	do 
		syft packages dir:/ --name $projectName -o $outputType > $projectName-$outputType-$(date +%s%3N) && dotheThings
	done

