variable "vpc_id" {
  type        = "string"
  description = "VPC to use for Tyk gateway"
}

variable "instance_subnets" {
  type        = "list"
  description = "List of subnets to use for instances"
}

variable "lb_subnets" {
  type        = "list"
  description = "List of subnets to use for load balancing"
}

variable "ingress_cidr" {
  type        = "string"
  description = "CIDR of ingress source"
  default     = "0.0.0.0/0"
}

variable "ssh_sg_id" {
  type        = "string"
  description = "Security group for SSH access"
  default     = ""
}

variable "instance_type" {
  type        = "string"
  description = "EC2 instance type"
  default     = "c5.large"
}

variable "key_name" {
  type        = "string"
  description = "EC2 key pair name"
}

variable "min_size" {
  type        = "string"
  description = "Minimum number of instances in autoscaling group"
  default     = "1"
}

variable "max_size" {
  type        = "string"
  description = "Maximum number of instance in autoscaling group"
  default     = "2"
}

variable "create_scaling_policies" {
  description = "Create scaling policies and alarm for autoscaling group"
  default     = false
}

variable "port" {
  type        = "string"
  description = "HTTP port of the gateway"
  default     = "80"
}

variable "gateway_config" {
  type        = "string"
  description = "Full gateway config file contents (replaces the default config file if set)"
  default     = ""
}

variable "package_repository" {
  type        = "string"
  description = "Repository name for the PackageCloud package"
  default     = "tyk-gateway"
}

variable "gateway_version" {
  type        = "string"
  description = "Version of Tyk gateway to deploy"
}

variable "redis_host" {
  type        = "string"
  description = "Redis host"
  default     = ""
}

variable "redis_port" {
  type        = "string"
  description = "Redis port"
  default     = ""
}

variable "redis_password" {
  type        = "string"
  description = "Redis password"
  default     = ""
}

variable "redis_enable_cluster" {
  type        = "string"
  description = "Is Redis clustering enabled?"
  default     = ""
}

variable "redis_hosts" {
  type        = "string"
  description = "Redis cluster connection parameters"
  default     = ""
}

variable "gateway_secret" {
  type        = "string"
  description = "Tyk gateway secret"
  default     = ""
}

variable "shared_node_secret" {
  type        = "string"
  description = "Shared gateway-dashboard secret for API definitions (leave empty if not used)"
  default     = ""
}

variable "dashboard_url" {
  type        = "string"
  description = "Tyk dashboard URL (leave empty if not used)"
  default     = ""
}

variable "enable_detailed_analytics" {
  type        = "string"
  description = "Enable detailed (request/response) analytics"
  default     = ""
}

variable "enable_ssm" {
  description = "Enable AWS Systems Manager"
  default     = false
}

variable "enable_https" {
  description = "Enable HTTPS listener on the ALB"
  default     = false
}

variable "https_port" {
  type        = "string"
  description = "HTTPS listener port"
  default     = "443"
}

variable "certificate_arn" {
  type        = "string"
  description = "ARN of the TLS certificate resource in ACM (required if enable_https is true)"
  default     = ""
}

variable "tls_policy" {
  type        = "string"
  description = "The name of the TLS policy for the listener (defaults to TLSv1.2 with modern cipher suite, modify for your needs)"
  default     = "ELBSecurityPolicy-TLS-1-2-2017-01"
}

variable "enable_cloudwatch_policy" {
  description = "Enable CloudWatch agent IAM policy for the instance profile"
  default     = false
}

variable "metrics_cloudconfig" {
  type        = "string"
  description = "Rendered cloud-init config for metrics and logs collection setup"
  default     = ""
}

variable "statsd_conn_str" {
  type        = "string"
  description = "Connection string for statsd instrumentation"
  default     = ""
}

variable "statsd_prefix" {
  type        = "string"
  description = "Prefix for statsd metrics"
  default     = "tykGW"
}
