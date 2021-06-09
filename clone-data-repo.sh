#!/bin/bash
echo "checking if ssh key for the atlas content repo is present"
FILE=/run/secrets/ssh_secret
# clear target folder for the repo content
rm ${COPY_CONTENT_REPOSITORY_TARGET_PATH}

# if ssh key is not empty, init the db with data:
if test -f "$FILE"; then
    echo "ssh key present"
# add ssh key and add github as known host
    mkdir /root/.ssh/ && cp /run/secrets/ssh_secret /root/.ssh/id_rsa
    chmod 400 /root/.ssh/id_rsa && ssh-keyscan github.com >> /root/.ssh/known_hosts
# clone repo
    git clone --single-branch --branch ${PATTERN_ATLAS_CONTENT_REPOSITORY_BRANCH} ${PATTERN_ATLAS_PRIVATE_CONTENT_REPOSITORY_URL} ${COPY_CONTENT_REPOSITORY_TARGET_PATH}
    echo "cloned ${PATTERN_ATLAS_CONTENT_REPOSITORY_BRANCH} of ${PATTERN_ATLAS_PRIVATE_CONTENT_REPOSITORY_URL}"
else
    echo "ssh key not present, proceeding with public db"
# clone repo
    git clone --single-branch --branch ${PATTERN_ATLAS_CONTENT_REPOSITORY_BRANCH} ${PATTERN_ATLAS_CONTENT_REPOSITORY_URL} ${COPY_CONTENT_REPOSITORY_TARGET_PATH}
    echo "cloned ${PATTERN_ATLAS_CONTENT_REPOSITORY_BRANCH} of ${PATTERN_ATLAS_CONTENT_REPOSITORY_URL}"
fi
#copy the file with the sql statements to the folder that is executed on startup of the postgres db
mv ${COPY_CONTENT_REPOSITORY_TARGET_PATH}/${SUBFOLDER_CONTENT_REPO_BACKUP_FILES}/* /docker-entrypoint-initdb.d/