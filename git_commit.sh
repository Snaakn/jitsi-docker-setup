#! /bin/bash
git pull
git add .
git commit -m "$(curl -s http://whatthecommit.com/ | awk -F "<[^<]p*>" '{printf $2;}')"
git push
