#!/bin/bash

apt-get update && apt-get install -y --no-install-recommends wget
wget --no-check-certificate https://raw.githubusercontent.com/ISA-tools/isa-api/master/tests/data/json/BII-S-3/BII-S-3.json

python3 run_json2tab.py ./BII-S-3.json /tmp/

# check that files were created
if ! [ -e "/tmp/i_investigation.txt" ]; then
	echo "Output ISA investigation file doesn't exist"
	exit 1
fi

echo "All files created successfully"
