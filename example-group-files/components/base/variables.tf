variable "project" {
  type        = string
  description = "The project name, used for tags"
}

variable "environment" {
  type        = string
  description = "Which environment we're working in"
}

variable "cost_allocation_team" {
  type        = string
  description = "Where should the cost for these resources be allocated"
}

variable "base_cidr" {
  type        = string
  description = "The CIDR range for the VPC for the environment"
}
