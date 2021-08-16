output "api-gateway-url" {
  value = module.app.api-gateway-url
}

output "collector_config_layer_arn" {
  value = aws_lambda_layer_version.collector_config_layer[0].arn
}