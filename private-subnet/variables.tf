variable "vpc_id" {
  description = "ID of the VPC that will contain the private subnet."
  type        = string
}

variable "cidr_block" {
  description = "Unused IPv4 CIDR block within the VPC."
  type        = string

  validation {
    condition     = can(cidrnetmask(var.cidr_block))
    error_message = "cidr_block must be a valid IPv4 CIDR block."
  }
}

variable "availability_zone" {
  description = "Availability zone for the subnet."
  type        = string
}

variable "name" {
  description = "Name tag for the subnet and its route table."
  type        = string
}

variable "tags" {
  description = "Additional tags for both resources."
  type        = map(string)
  default     = {}
}
