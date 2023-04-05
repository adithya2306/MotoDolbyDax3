#!/bin/bash

apktool b --use-aapt2 -o MotoDolbyDax3.apk
apksigner sign --key platform.pk8 --cert platform.x509.pem MotoDolbyDax3.apk
mv MotoDolbyDax3.apk MotoDolbyDax3.apku
zipalign -f 4 MotoDolbyDax3.apku MotoDolbyDax3.apk
rm MotoDolbyDax3.apku MotoDolbyDax3.apk.idsig
