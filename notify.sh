#!/bin/bash
AUTHOR_NAME="$(git log -1 $TRAVIS_COMMIT --pretty="%aN")"
COMMIT=$(git log -1 $TRAVIS_COMMIT --pretty="%h")
COMMIT_MSG="$(git log -1 --pretty=format:'%s by %aN')"
MSG="I will now build ${TRAVIS_REPO_SLUG} with this commit:
🔨 <a href=%27https://github.com/${TRAVIS_REPO_SLUG}/commit/${TRAVIS_COMMIT}%27>${COMMIT}</a>: ${COMMIT_MSG}"
curl https://api.telegram.org/bot${BOT_TOKEN}/sendMessage -d "chat_id=${CHAT_ID}&text=$MSG&parse_mode=HTML"
