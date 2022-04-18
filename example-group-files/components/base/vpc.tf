resource "aws_vpc" "main" {
  cidr_block = var.base_cidr

  tags = {
    CostAllocationTeam = var.cost_allocation_team
    Environment        = var.environment
    Name               = var.environment
    Project            = var.project
  }


}
