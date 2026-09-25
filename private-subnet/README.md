# Private subnet module

Creates one IPv4 subnet and associates it with a dedicated route table containing only the VPC local route. Instances launched here do not receive a public IPv4 address by default. No NAT gateway or internet route is created.

Required inputs: `vpc_id`, an unused `cidr_block` within that VPC, `availability_zone`, and `name`. Optional `tags` are applied to the subnet and route table. Outputs are `subnet_id` and `route_table_id`.

Use this module from a `live/<environment>/shared/private-subnet/terragrunt.hcl` stack once the VPC, CIDR, and availability zone are chosen. A new live stack creates a new remote-state key; inspect `terragrunt plan` before applying.
