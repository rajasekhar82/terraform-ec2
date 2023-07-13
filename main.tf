resource "aws_instance"  "server" {

    ami             = "ami-03cb1380eec7cc118"
    count           = 2
    instance_type   = "t2.micro"
    subnet_id       = "subnet-0687efb8144544b4b"
    security_groups = ["sg-0e38b7f7247dec1bc"]
    key_name        = "aws7"

    tags = {
      Name = "terraform-server"
    }

}
resource "aws_instance" "server" {
  count = 3
  ami = "ami-03cb1380eec7cc118"
  instance_type = "t2.micro"
#this will create 3 server but names will not come   
}

resource "aws_instance" "server" {
  count = 3
  ami = "ami-03cb1380eec7cc118"
  instance_type = "t2.micro"
  tags = var.tags
# here all servers same name will come 
}
resource "aws_instance" "server" {
  count = 3
  ami = "ami-03cb1380eec7cc118"
  instance_type = "t2.micro"
  tags = {
    Name = var.instance_name[count.index]  
  }
# add varibale names fecth here 
}
#conditions use bool type
resource "aws_instance" "conditions" {
  ami = "ami-03cb1380eec7cc118"
  instance_type = var.isprod ? "t3.large" : "t2.micro"    
}
#condition use env string 
resource "aws_instance" "conditions" {
  ami = "ami-03cb1380eec7cc118"
  instance_type = var.env == "PROD" ? "t3.large" : "t2.micro"    
}
#file function
resource "aws_key_pair" "terraform" {
  key_name = "terraform"
  public_key = file("C:\\Users\\user\\terraform.pub")
  #above command ile function read the local terraform.pub pulic key
  
}
#use above key pair 
resource "aws_instance" "conditions" {
  key_name = aws_key_pair.terraform.key_name
  ami = "ami-03cb1380eec7cc118"
  instance_type = var.env == "PROD" ? "t3.large" : "t2.micro"    
}


