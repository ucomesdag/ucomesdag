#!/usr/bin/env bash

# Copyright (C) 2021 Uco Mesdag

SCRIPTPATH="$( cd "$(dirname "$0")" >/dev/null 2>&1 ; pwd -P )"

> "${SCRIPTPATH}/README.md"
for FILE in $(ls -1 "${SCRIPTPATH}"/*.md | grep -v README);
do
  echo -e "$(<"${FILE}")\n" >> "${SCRIPTPATH}/README.md"
done

echo "$(<"${SCRIPTPATH}/README.md")" > "${SCRIPTPATH}/README.md"

git add "${SCRIPTPATH}/README.md"
