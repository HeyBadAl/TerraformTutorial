variable "ami_id" {
  description = "AMI ID to provision"
  type        = string
  default     = "ami-okjdsfnkjdfn"
}

variable "instance_type" {
  description = "instance-type"
  type        = string
  default     = "t2.micro"

}

variable "servers" {
  desciption = "number of intances to create"
  type       = number
  default    = 1

}