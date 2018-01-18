#!/bin/bash

for i in $(find . -name .git | xargs -i dirname {} | sort) ; do
  echo ; cd ${i}
  pwd
  git status | sed '1,2d'
  cd - 1> /dev/null
done
echo

exit $?
