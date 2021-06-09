FROM postgres:12

LABEL MAINTAINER Manuela Weigold <manuela.weigold@iaas.uni-stuttgart.de>

ENV PATTERN_ATLAS_CONTENT_REPOSITORY_URL "https://github.com/IAC2-Project/pattern-atlas-content.git"
ENV PATTERN_ATLAS_PRIVATE_CONTENT_REPOSITORY_URL "git@github.com:PatternAtlas/internal-pattern-atlas-content.git"
ENV PATTERN_ATLAS_CONTENT_REPOSITORY_BRANCH "master"
ENV SUBFOLDER_CONTENT_REPO_BACKUP_FILES "db-backup-files"
ENV COPY_CONTENT_REPOSITORY_TARGET_PATH "/var/pattern-atlas/testdata"
ENV POSTGRES_PASSWORD postgres
ENV POSTGRES_USER postgres
ENV JDBC_DATABASE_PORT 5432
ENV POSTGRES_DB db

# install dependencies (git)
RUN  apt-get update \
  && apt-get update -qq && apt-get install -qqy \
  git \
  && apt-get clean \
  && rm -rf /var/lib/apt/lists/*

COPY clone-data-repo.sh clone-data-repo.sh

# if ssh key is set, clone data repo with the sql scripts for initalization and start postgres afterwards
CMD  chmod 700 clone-data-repo.sh && ./clone-data-repo.sh && su postgres -c "/usr/local/bin/docker-entrypoint.sh postgres"
