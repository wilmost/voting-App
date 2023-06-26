provider "aws" {
    region = "us-east-1"
    version = ">= 3.40.0"    
    access_key = "${var.access_key}"
    secret_key = "${var.secret_key}"
}
data "aws_availability_zones" "azs" {
    state = "available"
}