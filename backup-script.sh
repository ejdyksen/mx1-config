#!/usr/bin/env bash

cd /tmp

now=`date +"%m_%d_%Y"`
filename=sa-learn-backup-$now.txt

sa-learn --backup > $filename

aws s3 cp $filename s3://ejdyksen-spam/sa-backup/$filename --region us-east-2 --storage-class STANDARD_IA

rm -f $filename
