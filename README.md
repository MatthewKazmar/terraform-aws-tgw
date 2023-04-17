# terraform-aws-tgw

This module deploys an AWS Transit Gateway and creates some route tables.

Example use:
```
module "aws_tgw_east" {
  providers = {
    aws = aws.east
  }

  source = "github.com/MatthewKazmar/terraform-aws-tgw"

  name                 = "tgw-east"
  network_domain_names = ["prod", "dev"]
  asn                  = 65000
  tgw_cidr_block       = "10.0.0.0/24"
}
```

Output:
- tgw: The AWS Transit Gateway object, all attributes.
- tgw_route_tables: A map of Route Tables, all attributes.
