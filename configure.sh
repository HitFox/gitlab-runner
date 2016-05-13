eval "cat <<EOF
$(</tmp/config.toml)
EOF
" > /etc/gitlab-runner/config.toml 2> /dev/null

/usr/bin/gitlab-runner run --user=gitlab-runner --working-directory=/home/gitlab-runner
