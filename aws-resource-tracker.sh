#!/bin/bash

#########################################
# Author: lokesh
# Date: 9/7/2023
# Version: v1.0
# This script  will report the aws resource usage
# s3
# EC2
# Lambda
# IAM user
#####################################################

set -x

echo "it will list the s3 buckets"
aws s3 ls

echo "list EC2 instances"
#aws ec2 describe-instances | jq '.Reservations[].Instances[].InstanceId'
#aws ec2 describe-instances

echo "list the aws lambda function"

aws lambda list-functions

echo "list iam user"

aws iam list-users
