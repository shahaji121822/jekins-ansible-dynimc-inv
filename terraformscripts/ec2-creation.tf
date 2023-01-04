provider "aws"{
   region  = "ap-south-1" 
   access_key = "AKIATBQZ47NEXGVGJIJW"
   secret_key = "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"
}

resource "aws_instance""AWSEC2Instance"{
     count   = 1
     ami = "ami-0f9d9a251c1a44858"
     instance_type = "t2.micro"
     security_groups = ["launch-wizard-18"]
     key_name        = "devopsmss"
     tags = {
        Name = "tomcatservers"
     }
}

