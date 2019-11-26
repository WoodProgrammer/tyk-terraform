# Tyk Terraform modules and examples

This repository contains Terraform modules to deploy Tyk components on supported platforms (currently only AWS but more to come).

See more at:
 * [Gateway on AWS](modules/tyk-gateway/aws/)
 * [Dashboard on AWS](modules/tyk-dashboard/aws/)
 * [Pump on AWS](modules/tyk-pump/aws/)
 * [MDCB on AWS](modules/tyk-mdcb/aws/)
 * [AWS CloudWatch logs and metrics for Tyk](modules/tyk-metrics/cloudwatch)

Full deployment examples are available in the deployments directory.

## Access AWS Resources via TYK Terraform Modules 
This modules include AWS as a cloud provider, so that if you want to access resources, you should add you credentials tou your `~/.aws/credentials` shown as below ;

```
[myprofile]
aws_access_key_id = AWS_ACCESS_KEY_ID
aws_secret_access_key = AWS_SECRET_KEY_ID

```
and than you set the `my_profile` to the profile_name variable .
