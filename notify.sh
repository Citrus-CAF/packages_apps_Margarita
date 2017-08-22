#!/bin/bash
AUTHOR_NAME="$(git log -1 $TRAVIS_COMMIT --pretty="%aN")"
COMMIT=$(git log -1 $TRAVIS_COMMIT --pretty="%h")
MSG="I will now build ${TRAVIS_REPO_SLUG} with this commit:
🔨 <a href=%27https://github.com/${TRAVIS_REPO_SLUG}/commit/${TRAVIS_COMMIT}%27>${COMMIT}</a>: ${TRAVIS_COMMIT_MESSAGE} by ${AUTHOR_NAME}"
curl https://api.telegram.org/bot${BOT_TOKEN}/sendMessage -d "chat_id=${CHAT_ID}&text=$MSG&parse_mode=HTML"