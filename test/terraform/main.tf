resource "aws_s3_bucket" "rlanda_bucket" {
  bucket = "rlanda-test0206-bucket"
  tags = {
    Name = "rlanda-bucket"
  }
}

resource "aws_vpc" "rlanda_vpc" {
  cidr_block = "10.1.0.0/16"
  tags = {
    Name = "rlanda-vpc"
  }
}