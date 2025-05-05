provider "aws" {
    alias = "og"
}

provider "aws" {
    region = "ap-south-1"
    alias = "new"
    
  
}

variable "aws_region" {
    description = "The region in which to create the infrastructure"
    type = string
    default = "eu-south-1" 
    validation {
        condition = var.aws_region == "eu-south-1" || var.aws_region == "eu-west-1"
        error_message = "The variable 'aws_region' must be one of the following regions: eu-north-1, eu-west-1"
    }

}
    
resource "aws_s3_bucket" "name" {
    bucket = "ap-south-1-s3-05-05-2025"
    provider = aws.new
  
}
resource "aws_s3_bucket" "test" {
    bucket = "eu-south-1-s3-05-05-2025"
    provider = aws.og
  
}