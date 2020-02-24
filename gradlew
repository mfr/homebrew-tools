#!/usr/bin/env bash
set -euo pipefail
./gradlew "$@" 2>&1 | gsed --unbuffered -e 's/\(^>.*\)/\o033[1;90m\1\o033[0;39m/' -e 's/\(.*WARNING.*\|^w:.*\|^warn:.*\|.*Warning:$\|^Note:.*\)/\o033[33m\1\o033[39m/' -e 's/\(.*FAIL.*\)/\o033[97;41m\1\o033[0m/' -e 's/\(^Execution failed.*\)/\o033[31m\1\o033[49m/' -e 's/\(.*SUCCESSFUL.*\)/\o033[97;42m\1\o033[0m/' -e 's/\(.*ABORTED.*\)/\o033[101m\1\o033[49m/' -e 's/\(^Node[0-9]$\)/\o033[32m\1\o033[39m/'
