variable "region" {
    type = string
    default = "eu-west-2"
  
}

variable "vpccidr_block" {
    type = string
    
}
variable "subcidr_block" {
    type = string
    
}
variable "ami" {
    type = string   
      
}

variable "instancetype" {
    type =  string
}

variable "tag" {
    type = string
     
}