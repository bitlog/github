#!/bin/bash

for i in $(find . -name .git | xargs -i dirname {} | sort) ; do
  echo ; cd ${i}
  pwd
  git pull
  cd - 1> /dev/null
done
echo

exit $?
