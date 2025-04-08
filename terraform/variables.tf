variable "aws_region" {
  description = "AWS region to deploy resources"
  type        = string
  default     = "us-east-2"
}

# Optional: Only needed if NOT using aws configure
variable "aws_access_key" {
  description = "AWS Access Key ID for authentication"
  type        = string
  sensitive   = true
}

variable "aws_secret_key" {
  description = "AWS Secret Access Key for authentication"
  type        = string
  sensitive   = true
}

variable "vpc_cidr" {
  description = "CIDR block for the VPC"
  type        = string
  default     = "10.0.0.0/16"
}

variable "subnet_cidr_1" {
  description = "CIDR block for public subnet 1 (AZ1)"
  type        = string
  default     = "10.0.1.0/24"
}

variable "subnet_cidr_2" {
  description = "CIDR block for public subnet 2 (AZ2)"
  type        = string
  default     = "10.0.2.0/24"
}

variable "db_password" {
  description = "Password for the RDS database"
  type        = string
  sensitive   = true
}
