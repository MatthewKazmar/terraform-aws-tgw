variable "name" {
  description = "AWS Transit Gateway name"
  type        = string
}

variable "network_domain_names" {
  description = "Names of network domains. Tagged on the route table. Blank to just use default."
  type        = list(string)
}

variable "asn" {
  description = "ASN for Transit Gateway"
  type        = number
}

variable "tgw_cidr_block" {
  description = "CIDR block for use with TGW."
  type        = string
}

variable "tags" {
  description = "Map of tags to apply to the resource."
  type        = map(string)
  default     = {}
}