#!/bin/sh -l

echo "Connecting to the remote host..."

echo ${PRIVATE_KEY} > private_key && chmod 600 private_key

ssh -o StrictHostKeyChecking=no -i ${PRIVATE_KEY} ${INPUT_USER_NAME}@${INPUT_HOST_NAME} "

    cd ${INPUT_APP_DIR} &&
    git pull &&
    echo ${INPUT_USER_PASSWORD} | sudo -S systemctl restart ${INPUT_SERVICE_NAME}
"
echo "Finished..."

time=$(date)

echo "::set-output name=time::$time"
