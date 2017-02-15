import sys
import os
src_json = sys.argv[1]
target_dir = sys.argv[2]
try:
    from isatools.convert import json2isatab
except ImportError as e:
    raise RuntimeError("Could not import isatools package")
if not os.path.exists(src_json):
    print("File path to ISA-JSON file \"{}\" does not exist".format(src_json))
    sys.exit(0)

with open(src_json) as in_fp:
    json2isatab.convert(in_fp, target_dir)
