#!/usr/bin/env sh

if [ -f "target/travistest-1.0-SNAPSHOT.jar" ]
then
  echo "file is here"
else
  echo "file is gone :("
fi
echo "deploying all the shit"