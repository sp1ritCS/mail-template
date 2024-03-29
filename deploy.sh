#!/usr/bin/env sh

# abort on errors
set -e

# navigate into the build output directory
mkdir -p  deploy
cp template.html ./deploy/index.html
cd deploy
# if you are deploying to a custom domain
# echo 'www.example.com' > CNAME

git init
git add -A
git commit -m 'deploy'

# if you are deploying to https://<USERNAME>.github.io
# git push -f git@github.com:<USERNAME>/<USERNAME>.github.io.git master

# if you are deploying to https://<USERNAME>.github.io/<REPO>
git push -f git@github.com:sp1ritCS/mail-template.git master:gh-pages

cd -
