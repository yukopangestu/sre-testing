include "root" {
  path = find_in_parent_folders("root.hcl")
}

terraform {
  source = "${get_terragrunt_dir()}/../../../../private-subnet"
}

inputs = {
  vpc_id            = "vpc-04e1504738b9ac561"
  cidr_block        = "172.31.48.0/20"
  availability_zone = "ap-southeast-3a"
  name              = "sbg-production-private-a"

  tags = {
    Environment = "production"
    Scope       = "shared"
  }
}
