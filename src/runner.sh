#!/usr/bin/env bash

groupadd -g "${GROUPID}" runner
useradd -m -d /home/runner -u "${USERID}" -g "${GROUPID}" -s /bin/bash runner
