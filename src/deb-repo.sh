#!/usr/bin/env bash

cd /in
dpkg-scanpackages . | gzip > /out/Packages.gz
