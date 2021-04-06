variable "amiid" {
  description = "AMI ID"
  type        = string
  default     = "ami-0742b4e673072066f"
}

variable "instance_type" {
  type    = string
  default = "t2.micro"
}

variable "ntags" {
  
  default = "RT_APP"
}

variable "instance_count" {
  type    = number
  default = 2
}

variable "env" {
  description = "Environment"
}