variable "vpc_id" {
  description = "The ID of the VPC where the Load Balancer will be created"
  type        = string
}

variable "public_subnet_id" {
  description = "List of subnet IDs for the Load Balancer"
  type        = list(string)
}

variable "security_group_id" {
  description = "The security group ID for the Load Balancer"
  type        = string
}
