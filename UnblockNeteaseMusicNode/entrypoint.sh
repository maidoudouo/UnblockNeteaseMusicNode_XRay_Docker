#!/bin/sh
set -e

[ "${SOURCE}" = "" ] && SOURCE_ARG="" || SOURCE_ARG="-o"
node app.js -p 5200 ${SOURCE_ARG} ${SOURCE}