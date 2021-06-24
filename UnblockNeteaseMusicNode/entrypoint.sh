#!/bin/sh
set -e

[ "${SOURCE}" = "" ] && SOURCE_ARG="" || SOURCE_ARG="-o"
[ "${ENABLE_FLAC}" = "yes" ] && export ENABLE_FLAC=true

node app.js -p 5200:5201 -s -e https://music.163.com ${SOURCE_ARG} ${SOURCE}