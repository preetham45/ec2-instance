#!/bin/bash
ami=ami-f4cc1de2

if [ "$ami" == "ami-f4cc1de2" ]
then
aws ec2 run-instances --image-id $ami --count 1 --instance-type t2.micro --key-name aws-new --region us-west-2
else
echo "The only supported ami is ami-f4cc1de2 and region is us-west-2"
exit 1
fi
