FROM mysql:8-debian

RUN  apt-get update \
  && apt-get -y install --no-install-recommends curl ca-certificates \
  && apt-get autoremove -y \
  && apt-get clean -y \
  && rm -rf /var/lib/apt/lists/* \
  # Install ColumnQ
  && cd /usr/local/bin \
  && curl -sL https://github.com/roapi/roapi/releases/download/columnq-cli-v0.3.0/columnq-cli-x86_64-unknown-linux-musl.tar.gz | tar zxvf - \
  # Use utf8mb4 in cli client
  && { \
      #echo '[mysqld]'; \
      #echo 'character-set-server=utf8mb4'; \
      #echo 'collation-server=utf8mb4_general_ci'; \
      echo '[client]'; \
      echo 'default-character-set=utf8mb4'; \
  } > /etc/mysql/conf.d/charset.cnf