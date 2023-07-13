variable "tags" {
    type = map(string)
    default = {
      Name = "Timing"
      Terraform = "true"
      Environment = "DEV"
    } 
}
variable "instance_name" {
    type = list
    default = ["webserver", "Appserver", "dbserver"] 
}
variable "isprod" {
    type = bool
    default = true  
}
variable "env" {
    type = string
    default = "PROD"  
}