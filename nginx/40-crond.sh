#!/bin/sh

set -e

if command -v crond >/dev/null 2>&1 ; then
    crond -d 8
else
    cron
fi
