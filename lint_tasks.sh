#!/bin/bash
set -e

find "$(pwd)" \( -name .git \) -prune -o -type f \( -name '*.yaml' -o -name '*.yml' \) -exec grep -Hwln "kind: Task" {} \; | xargs -I {} catlin lint script {} 
