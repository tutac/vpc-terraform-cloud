module "db" {
source = "tutac/terraform-rds-instance"
region = "us-east-2"
subnet_ids = [
"subnet-0764b3812f98463f4", 
"subnet-01a630df412c0aab8", 
"subnet-07655cc9da49d8de5"
]
security_group_name = "db"
allowed_hosts = [
"0.0.0.0/0"
]
db_name = "dbname"
engine = "mysql"
engine_version = "5.7"
instance_class = "db.t2.micro"
username = "foo"
password = "foobarbaz"
publicly_accessible = true
allocated_storage = 20
}
