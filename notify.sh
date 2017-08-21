#!/bin/bash
AUTHOR_NAME="$(git log -1 $TRAVIS_COMMIT --pretty="%aN")"
COMMITTER_EMAIL="$(git log -1 $TRAVIS_COMMIT --pretty="%cE")"
COMMIT=$(echo ${TRAVIS_COMMIT} | cut -c1-7)
MSG=I%20will%20now%20build%20${TRAVIS_REPO_SLUG}%20with%20this%20commit%3A%20%3Ca+href%3D%27https%3A%2F%2Fgithub.com%2FCitrus-CAF%2Fpackages_apps_Margarita%2Fcommit%2F${TRAVIS_COMMIT}%27%3E${COMMIT}%3C%2Fa%3E%3A${TRAVIS_COMMIT_MESSAGE}%20by%20${AUTHOR_NAME}
curl https://api.telegram.org/bot${BOT_TOKEN}/sendMessage -d "chat_id=${CHAT_ID}&text=${MSG}&parse_mode=HTML"