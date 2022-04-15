#!/usr/bin/env bash

> /out/$1
cd /in
for f in `ls *.deb`; do dpkg-deb -I $f | awk '/Environment:/ {p=1;next} /^[^=]+$/ && p==1 {p=0} p==1 && $0!="" {print "export"$0";"}'; done >> /out/$1
