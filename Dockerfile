FROM gitlab/gitlab-runner

COPY config/config.toml /tmp
COPY configure.sh /tmp

ENTRYPOINT [ "bash","/tmp/configure.sh" ]
