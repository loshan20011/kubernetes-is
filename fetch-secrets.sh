#!/bin/bash
SECRET_VALUE=$(aws secretsmanager get-secret-value --secret-id INTERNAL-KEYSTORE-PASSWORD-DECRYPTED --query SecretString --output text | cut -d: -f2 | tr -d \"})
echo $SECRET_VALUE > /mnt/secrets/my-secret

