resource "aws_instance" "example" {
  ami           = "ami-01234567890"
  instance_type = "t3.micro"

  tags = {
    CostAllocationTeam = var.cost_allocation_team
    Project            = var.project
  }
}
