#!/bin/bash

ARCHITECTURE=$(
  dpkg --print-architecture
) envsubst '${ARCHITECTURE}' < debian/control.tmpl > debian/control

VERSION=$(
  curl https://download-installer.cdn.mozilla.net/pub/devedition/releases/ |
  grep -o '[0-9]*[0-9][0-9]\.[0-9][a-z][0-9]*[0-9]' | tail -1
) envsubst '${VERSION}' < debian/changelog.tmpl > debian/changelog
