output "tgw" {
  description = "The AWS TGW object."
  value       = aws_ec2_transit_gateway.this
}

output "tgw_route_tables" {
  description = "AWS TGW Route Tables"
  value       = aws_ec2_transit_gateway_route_table.this
}