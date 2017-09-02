#!/usr/bin/env sh

set -ev

echo "$key"
echo "$key" | base64 > key
cat key
chmod 600 key

#TODO collect war to deploy_target
scp -P 22222 -i key -r -o StrictHostKeyChecking=no deploy_target travis@188.68.35.134:deploy_target

ssh travis@dev.slothyx.com -p 22222 -i key -o StrictHostKeyChecking=no "deploy_target/deploy_on_server.sh"

rm -f key