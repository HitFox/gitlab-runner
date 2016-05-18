gitlab-runner register -n -r $GITLAB_RUNNER_TOKEN -u $GITLAB_CI_URL --executor docker --docker-image $GITLAB_RUNNER_IMAGE --description ${GITLAB_RUNNER_DESC}_1 --docker-privileged
gitlab-runner register -n -r $GITLAB_RUNNER_TOKEN -u $GITLAB_CI_URL --executor docker --docker-image $GITLAB_RUNNER_IMAGE --description ${GITLAB_RUNNER_DESC}_2 --docker-privileged

/usr/bin/gitlab-runner run --user=gitlab-runner --working-directory=/home/gitlab-runner
