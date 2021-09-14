#!/bin/bash
set -e

grep -wln "kind: Task" ${DIRECTORY} | xargs -I {} catlin lint script {} 
