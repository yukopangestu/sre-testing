resource "aws_subnet" "private" {
  vpc_id                  = var.vpc_id
  cidr_block              = var.cidr_block
  availability_zone       = var.availability_zone
  map_public_ip_on_launch = false

  tags = merge(var.tags, { Name = var.name })
}

resource "aws_route_table" "private" {
  vpc_id = var.vpc_id
  route  = []

  tags = merge(var.tags, { Name = "${var.name}-rt" })
}

resource "aws_route_table_association" "private" {
  subnet_id      = aws_subnet.private.id
  route_table_id = aws_route_table.private.id
}
