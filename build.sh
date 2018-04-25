#! /bin/sh
echo "Converting MD tables to RST"
python tools/prebuild.py
sphinx-build -a -b html src docs
python tools/postbuild.py