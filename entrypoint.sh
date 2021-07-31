#!/bin/bash

hub checkout ${${REPO_BRANCH}:-master}
VERSION_NAME=`grep -oP 'versionName "\K(.*?)(?=")' ./${APP_FOLDER}/build.gradle`
hub release create -a ${FILE_DIR} -m "App Release - ${VERSION_NAME}" $(date +%Y%m%d)
