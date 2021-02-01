#!/bin/bash
# Author: Mykola Zoshchuk
# Created: 01/02/2021
# Description: Copy sql dump to aws s3 bucket
# Modified: 01/02/2021

DATE=$(date +%H-%M-%S)
BACKUP=db-$DATE.sql
DB_HOST=$1
DB_PASSWORD=$2
AWS_SECRET=$4
BUCKET_NAME=$5

mysqldump -u root -h $DB_HOST -p$DB_PASSWORD $DB_NAME > /tmp/$BACKUP && \
export AWS_ACCESS_KEY_ID=AKIAVAFGFELDBN543CEZ && \
export AWS_SECRET_ACCES_KEY=$AWS_SECRET && \
aws s3 cp /tmp/db-$DATE.sql s3://$BUCKET_NAME/$BACKUP
