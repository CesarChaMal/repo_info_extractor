#!/usr/bin/env bash
REPO_NAME=$(basename $1)
#echo "${1}"
#echo "${REPO_NAME}"
#echo "$(pwd)"
docker run -it --mount type=bind,source="$1"/,target="/$REPO_NAME" --mount type=bind,source="$(pwd)"/,target="/app" codersrank/repo_info_extractor:latest /$REPO_NAME
#docker run -it --mount type=bind,source="$1"/,target="/$REPO_NAME" --mount type=bind,source="$1"/,target="/app" codersrank/repo_info_extractor:latest /$REPO_NAME
