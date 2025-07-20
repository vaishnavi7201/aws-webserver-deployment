#!/bin/bash

aws configure

# aws cli need to be installed before runnig this command and once done, config aws cli with this command and add access key IDs which are created during IAM user creation

aws s3 cp /application s3://12static12bucket12 --recursive

# copy files present in /application directory to the s3 bucket named 12static12bucket12.
# To copy the entire directory to the bucket --recursive command is recommended
