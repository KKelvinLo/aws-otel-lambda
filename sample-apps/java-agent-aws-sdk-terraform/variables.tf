variable "function_name" {
  type        = string
  description = "Name of sample app function / API gateway"
  default     = "hello-java-awssdk-agent"
}

variable "path_to_custom_collector_config_zip" {
  type        = string
  description = "File path to the zipped custom collector config.yaml file. Leave as default to use the default collector config (without AMP)"
  default = null 
}