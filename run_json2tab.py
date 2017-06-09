#!/usr/bin/env python3

import sys
import os
import shutil
import tempfile
src_json = sys.argv[1]
try:
    from isatools.convert import json2isatab
except ImportError as e:
    raise RuntimeError("Could not import isatools package")
if not os.path.exists(src_json):
    print("File path to ISA-JSON file \"{}\" does not exist".format(src_json))
    sys.exit(0)

with open(src_json) as in_fp:
    tmpdir = tempfile.mkdtemp()
    json2isatab.convert(in_fp, tmpdir)
    if tmpdir is not None:
        shutil.make_archive('out', 'zip', tmpdir)
        shutil.rmtree(tmpdir)
        print("ISA-Tab written to out.zip")

