hub checkout ${${REPO_BRANCH}:-master}
VERSION_NAME=`grep -oP 'versionName "\K(.*?)(?=")' ./${APP_FOLDER}/build.gradle`
hub release create -a ./${APP_FOLDER}/build/outputs/apk/release/*-release.apk -m "App Release - ${VERSION_NAME}" $(date +%Y%m%d%H%M%S)
