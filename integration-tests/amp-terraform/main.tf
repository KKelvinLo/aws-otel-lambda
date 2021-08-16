# set up an AMP workspace used only for integration tests (assume customer already has their own AMP workspace endpoint)
 data "aws_region" "current" {}

 resource "aws_prometheus_workspace" "test_amp_workspace" {

     // create a config.yaml file with the AMP "endpoint" and "region", and zips it
     provisioner "local-exec" {
         command = "sed 's@<remote_write_endpoint>@${self.prometheus_endpoint}api/v1/remote_write@g; s@<workspace_region>@${data.aws_region.current.name}@g' preformatted_config.yaml > config.yaml; zip custom-config-layer.zip config.yaml; rm config.yaml; "
     }
 }