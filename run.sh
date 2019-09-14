#!/bin/bash
args=("$@")

function goto
{
label=$1
cmd=$(sed -n "/$label:/{:a;n;p;ba};" $0 | grep -v ':$')
eval "$cmd"
exit
}

echo off
echo "Chuan bi chay lenh start"
sleep 2

src/server/bin/server --port=8443 --firebase_project_id=capillary-demo-30299 --service_account_credentials_path=src/resources/firebase/service-account.json --ecdsa_private_key_path=src/resources/ecdsa/sender_signing_key.dat --tls_cert_path=src/resources/tls/tls_rsa.crt --tls_private_key_path=src/resources/tls/tls_rsa.key --database_path=src/resources/sqlite/demo.db