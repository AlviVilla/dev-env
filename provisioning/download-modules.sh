#!/usr/bin/env bash

git config --global user.name "$1"
git config --global user.email "$2"

# Allow clone with github as if we know the key already.
# If this fails, GitHub has their keys compromised.
cat /home/vagrant/githubKey >> /home/vagrant/.ssh/known_hosts
rm /home/vagrant/githubKey

# INSERT THE REPOSITORIES IN A LIST (separated by a single space) HERE:
TEMPLATES=""
LIBRARIES="" 
SERVICES="er_storage_manager er_user_interface dev-env"
BUILDING_BLOCKS=""
REPOS="$TEMPLATES $LIBRARIES $SERVICES $BUILDING_BLOCKS"
for i in $REPOS;
do
    git clone "git@github.com:AlviVilla/"$i".git" /home/vagrant/$i
    cd /home/vagrant/$i && git flow init -d
    cd /home/vagrant
done