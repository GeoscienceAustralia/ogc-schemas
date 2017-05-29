#!/usr/bin/env bash

if [ "${TRAVIS_PULL_REQUEST}" == "false" ]; then
    nix-shell --command "mvn --settings travis/maven-settings.xml package"
else
    cp scripts/travis/npmrc scripts/.npmrc
    nix-shell --command "mvn --settings travis/maven-settings.xml deploy"
fi
