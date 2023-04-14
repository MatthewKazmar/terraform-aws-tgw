resource "aws_ec2_transit_gateway" "this" {
  amazon_side_asn             = var.asn
  transit_gateway_cidr_blocks = var.tgw_cidr_block

  tags = merge(
    {
      Name = var.name
    },
    var.tags
  )
}

resource "aws_ec2_transit_gateway_route_table" "this" {
  for_each = toset(var.network_domain_names)

  transit_gateway_id = aws_ec2_transit_gateway.this.id

  tags = merge(
    {
      Name           = "${var.name}-${each.value}",
      Network_Domain = each.value
    },
    var.tags
  )
}