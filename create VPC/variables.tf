variable "vpc_cidr_block" {
  description = "The CIDR block for the MY VPC1-sree"
  type        = string
  default     = "10.0.0.0/16"
}
variable "name" {
  description = "Name to be used on all the resources as identifier"
  type        = string
  default     = "My VPC1-sree"
}