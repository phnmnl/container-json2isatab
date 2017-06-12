#!/bin/bash

apt-get update && apt-get install -y --no-install-recommends wget
wget --no-check-certificate https://raw.githubusercontent.com/ISA-tools/ISAdatasets/master/json/BII-S-3/BII-S-3.json

run_json2tab.py ./BII-S-3.json

# check that files were created
if ! [ -e "/out.zip" ]; then
	echo "Output ISArchive does not exist"
	exit 1
fi

echo "All files created successfully"
