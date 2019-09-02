# MX1

A CloudFormation template for my mail server.

## Updating IP address:

Make sure to update the IP in the following places:

* Postfix's `mynetworks`
* OpenDKIM's `trustednetworks` file
* VPC Firewall rules (for both port `22` and `26`)
