#!/bin/sh

TARGET=$1
RUNTIME=$2

cd ../../ &&\
npm install --unsafe-perm &&\
cd test
npm install && npm test
cd -
npm run prebuild -- -t $TARGET -r $RUNTIME --include-regex "\.(node|a|so|dylib|lib|dll).*$" -u $GITHUB_TOKEN;
