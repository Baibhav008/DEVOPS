#!/bin/bash
# ################################################# 
# Author : Kumar Baibhav
# Date : 27/09/2024
#
# Version : v1
#
# This script will report the AWS resource usage
# ################################################

# AWS S3
# AWS EC2
# AWS Lambda
# AWS IAM Users

set -x

#list s3 buckets
echo "Fetching list of S3 Buckets"
aws s3 ls

#list ec2 instances
echo "Fetching list of EC2 Instances"
aws ec2 describe-instances | jq '.Reservations[].Instances[].InstanceId'

#list aws lambda functions
echo "Fetching list of Lambda Functions"
aws lambda list-functions

#list IAM users
echo "Fetching list of IAM Users"
aws iam list-users
