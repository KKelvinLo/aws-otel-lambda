# used by CI 
 output "amp_endpoint" {
   value = aws_prometheus_workspace.test_amp_workspace.prometheus_endpoint
 }