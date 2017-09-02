#!/usr/bin/env sh

echo "$key" | base64 > key

#TODO collect war to deploy_target
scp -P 22222 -i id_rsa -r deploy_target travis@188.68.35.134:deploy_target

ssh travis@dev.slothyx.com -p 22222 -i key "deploy_target/deploy_on_server.sh"

rm -f key