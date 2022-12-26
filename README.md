# launch_ec2_with_specific_region_ami
This simple code will launch t2.micro instance with specific amazon AMI from us-east-1, us-east-2, us-west-1, us-west-2 depending on the region passed by user.

## To make this code work, pass the required variables

Here is an example of terraform.tfvars:

aws_access_key="xxxx"

aws_secret_key="xxxx"

aws_region="us-west-1"
