#!/bin/bash
AUTHOR_NAME="$(git log -1 $TRAVIS_COMMIT --pretty="%aN")"
FILENAME=Margarita-debug-$(date +"%Y%m%d-%H:%M").apk
COMMIT=$(echo ${TRAVIS_COMMIT} | cut -c1-7)
MSG=Build%20%23${TRAVIS_BUILD_NUMBER}%20%28%3Ca+href%3D%27https%3A%2F%2Fgithub.com%2FCitrus-CAF%2Fpackages_apps_Margarita%2Fcommit%2F${TRAVIS_COMMIT}%27%3E${COMMIT}%3C%2Fa%3E%29%20of%20${TRAVIS_REPO_SLUG}%40${TRAVIS_BRANCH}%20by%20${AUTHOR_NAME}%20passed.
mv app/build/outputs/apk/debug/app-debug.apk ${FILENAME}
curl https://slack.com/api/files.upload -F token=${TOKEN} -F channels=#margarita -F title=${FILENAME} -F filename=${FILENAME} -F file=@${FILENAME}
curl https://api.telegram.org/bot${BOT_TOKEN}/sendDocument -F chat_id=${CHAT_ID} -F document=@${FILENAME}
curl https://api.telegram.org/bot${BOT_TOKEN}/sendMessage -d "chat_id=${CHAT_ID}&text=${MSG}&parse_mode=HTML"
