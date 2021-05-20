#!/bin/bash -e
#
# Apply patches to the ROL PRMs CD.
#

if [[ ! -d PRMS_CD ]]; then
  echo "Copy the contents of your PRMS CD to PRMS_CD.";
  exit 1;
fi

cp -R PRMS_CD/HTML/* .

for p in *.patch; do
  echo $p;
  patch -p1 < $p
done

