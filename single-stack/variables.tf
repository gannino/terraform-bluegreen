variable "color" {
  description = ""
}

variable "project" {
  description = "Project name to use"
}

variable "name" {
  description = "Name of the stack"
}

variable "environment" {
  description = "Environment to deploy on"
}

variable "ami" {
  description = "(Required) The EC2 image ID to launch"
}

variable "instance_type" {
  description = "(Required) The size of instance to launch"
}

variable "key_name" {
  description = "(Optional) The key name that should be used for the instance"
  default     = ""
}

variable "loadbalancers" {
  type        = "list"
  description = "(Optional) A list of load balancer names to add to the autoscaling group"
  default     = []
}

variable "security_groups" {
  type        = "list"
  description = "(Optional) A list of associated security group IDS"
  default     = []
}

variable "iam_instance_profile" {
  description = "(Optional) The IAM instance profile to associate with launched instances"
  default     = ""
}

variable "associate_public_ip_address" {
  description = "(Optional) Associate a public ip address with an instance in a VPC"
  default     = false
}

variable "user_data" {
  description = "(Optional) The user data to provide when launching the instance"
  default     = "# Hello World"
}

variable "disk_volume_size" {
  description = "(Optional) The size of the volume in gigabytes"
  default     = "8"
}

variable "disk_volume_type" {
  description = "(Optional) The type of the volume. Default is standard"
  default     = "standard"
}

variable "subnets" {
  description = "(Optional) A list of subnet IDs to launch resources in"
  type        = "list"
  default     = []
}

variable "max_size" {
  description = "(Required) The maximum size of the auto scale group"
}

variable "min_size" {
  description = "(Required) The minimum size of the auto scale group"
}

variable "desired_capacity" {
  description = "(Required) The number of Amazon EC2 instances that should be running in the group"
}

variable "health_check_grace_period" {
  description = "(Optional, Default: 300) Time (in seconds) after instance comes into service before checking health"
  default     = "300"
}

variable "termination_policies" {
  description = "(Optional, Default: ['Default']) Order in termination policies to apply when choosing instances to terminate. Always end with 'Default'."
  type        = "list"
  default     = ["Default"]
}

variable "target_group_arns" {
  type        = "list"
  description = "A list of aws_alb_target_group ARNs, for use with Application Load Balancing"
  default     = []
}

variable "health_check_type" {
  description = "The health check type to apply to the Autoscaling group."
  default     = "ELB"
}

variable "tags" {
  description = "(Optional, Default: []) List of map of additional tags"
  type        = "list"
  default     = []
}
