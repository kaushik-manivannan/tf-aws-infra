variable "aws_region" {
  description = "The AWS region to create resources in"
  type        = string
}

variable "vpcs" {
  description = "Map of VPC configurations"
  type = map(object({
    cidr_block           = string
    public_subnet_cidrs  = list(string)
    private_subnet_cidrs = list(string)
  }))
}

variable "availability_zones" {
  description = "Availability zones to use for subnets"
  type        = list(string)
}

variable "environment" {
  description = "Environment (e.g., dev, demo)"
  type        = string
}

variable "ami_id" {
  description = "ID of the custom AMI to use for EC2 instances"
  type        = string
}

variable "instance_type" {
  description = "EC2 instance type"
  type        = string
}

variable "application_port" {
  description = "Port on which the application runs"
  type        = number
}

variable "key_name" {
  description = "Name of the SSH key pair to use for EC2 instances"
  type        = string
}

variable "database_port" {
  description = "Port on which the database runs"
  type        = number
}

variable "db_parameter_group_family" {
  description = "The family of the DB parameter group"
  type        = string
}

variable "db_engine" {
  description = "The database engine to use"
  type        = string
}

variable "db_engine_version" {
  description = "The engine version to use"
  type        = string
}

variable "db_instance_class" {
  description = "The instance type of the RDS instance"
  type        = string
}

variable "db_name" {
  description = "The name of the database"
  type        = string
}

variable "db_username" {
  description = "Username for the master DB user"
  type        = string
}

variable "domain_name" {
  description = "Domain name"
  type        = string
}

variable "min_size" {
  description = "Minimum number of instances in the Auto Scaling group"
  type        = number
}

variable "max_size" {
  description = "Maximum number of instances in the Auto Scaling group"
  type        = number
}

variable "desired_capacity" {
  description = "Desired number of instances in the Auto Scaling group"
  type        = number
}

variable "scale_up_threshold" {
  description = "CPU percentage to trigger scale up"
  type        = string
}

variable "scale_down_threshold" {
  description = "CPU percentage to trigger scale down"
  type        = string
}

variable "sendgrid_api_key" {
  description = "SendGrid API Key"
  type        = string
  sensitive   = true
}

variable "lambda_zip_path" {
  description = "Path to the Lambda function ZIP file"
  type        = string
}