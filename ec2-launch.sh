#!/bin/bash
ami=ami-0b33d91d

if [ "$ami" == "ami-0b33d91d" ]
then
aws ec2 run-instances --image-id $ami --count 1 --instance-type t2.micro --key-name aws-new --region us-west-2
else
echo "The only supported ami is ami-0b33d91d and region is us-west-2"
exit 1
fi
