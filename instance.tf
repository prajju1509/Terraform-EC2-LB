resource "aws_instance" "ec2" {
  ami = "ami-0f69bc5520884278e"
  instance_type = "t2.micro"
  subnet_id = aws_subnet.subnet1.id
  user_data = file("shell.sh")
  vpc_security_group_ids = [aws_security_group.sgforinstance.id]
  tags = {
    Name = "LB-EC2"
  }
}
resource "aws_instance" "ec21" {
  ami = "ami-0f69bc5520884278e"
  instance_type = "t2.micro"
  subnet_id = aws_subnet.subnet1.id
  user_data = file("shell.sh")
  vpc_security_group_ids = [aws_security_group.sgforinstance.id]
  tags = {
    Name = "LB-EC21"
  }
}
