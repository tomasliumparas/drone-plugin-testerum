#!/bin/sh

echo -e "--> Print env"
env

echo -e
echo -e "--> Running testerum"
testerum-runner.sh --repository-directory ${PLUGIN_REPOSITORY_DIRECTORY}
