#!/usr/bin/env sh
set -e

npm run docs:build

cd docs/.vuepress/dist

git init
git add -A
git commit -m 'update: auto deploy'

git push -f git@github.com:airingursb/frontend-reading-list.git master:gh-pages

cd -