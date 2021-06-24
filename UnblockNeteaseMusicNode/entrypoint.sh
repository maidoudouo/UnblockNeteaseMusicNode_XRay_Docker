#!/bin/sh
set -e

[ "${SOURCE}" = "" ] && SOURCE_ARG="" || SOURCE_ARG="-o"
[ "${ENABLE_FLAC}" = "yes" ] && export ENABLE_FLAC=true

node app.js -p 5200 ${SOURCE_ARG} ${SOURCE}