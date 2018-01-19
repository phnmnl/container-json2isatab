#!/bin/bash

apk update && apk add ca-certificates && update-ca-certificates
wget --no-check-certificate https://raw.githubusercontent.com/ISA-tools/ISAdatasets/master/json/BII-S-3/BII-S-3.json

run_json2tab.py BII-S-3.json

# check that files were created
if ! [ -e "i_investigation.txt" ]; then
	echo "Output i_investigation.txt does not exist"
	exit 1
fi

if ! [ -e "s_BII-S-3.txt" ]; then
	echo "Output s_BII-S-3.txt does not exist"
	exit 1
fi

if ! [ -e "a_gilbert-assay-Gx.txt" ]; then
	echo "Output a_gilbert-assay-Gx.txt does not exist"
	exit 1
fi

if ! [ -e "a_gilbert-assay-Tx.txt" ]; then
	echo "Output a_gilbert-assay-Tx.txt does not exist"
	exit 1
fi

echo "All files created successfully"
