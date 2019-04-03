#! /bin/bash

export BLISSVER=0.73

wget --progress=dot:mega --no-check-certificate http://www.tcs.hut.fi/Software/bliss/bliss-$BLISSVER.zip

unzip bliss-$BLISSVER.zip
rm bliss-$BLISSVER.zip

cd bliss-$BLISSVER

make

tar cvzf bliss_linux.tar.gz bliss

mv bliss_linux.tar.gz ../website/

cd ..

