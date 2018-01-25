#!/usr/bin/env python3
import sys
import os
import logging

from isatools import config
from isatools import isajson
from isatools import isatab

logging.basicConfig(level=config.log_level)
log = logging.getLogger(__name__)

src_json = sys.argv[1]
path = sys.argv[2]
try:
    from isatools.convert import json2isatab
except ImportError as e:
    raise RuntimeError('Could not import isatools package')
if not os.path.exists(src_json):
    print('File path to ISA-JSON file \'{}\' does not exist'.format(src_json))
    sys.exit(0)

with open(src_json, encoding='utf-8') as json_fp:
    log.info("Loading ISA-JSON from %s", json_fp.name)
    isa_obj = isajson.load(fp=json_fp)
    log.info("Dumping ISA-Tab to %s", path)
    isatab.dump(
        isa_obj=isa_obj, output_path=path, i_file_name='i_investigation.txt')
    #  copy data files across from source directory where JSON is located
    log.info("Copying data files from source to target")
