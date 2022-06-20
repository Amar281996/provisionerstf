variable "ssh_public_key" {
    type = string
    default = "ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABgQDcIIEknk5n4NSyBTAZX0BCgqFMlHZS1LbszC909XMJHSsY3sDadDBcxkqXxPTCR+lu9teT8Kij6pk4NIhiiKkoYjg8gnU1zlAklksmtlWkyuEYgBbg7Lk5+3VBQV8DR7imfX2ccQEcbMsSltF80c4Lso9aLdYzAPiuSCx2w44gChGV9slZxlO0RAj0Oc+3I1OsKapTgMU6gYiqb92eof6/5m9prfXKc88StYAX/x2dRC249Wo2JwhhdMlfX31x344NnTD5he3k7RDNfvrcpi2hXtg/tG7YqCMJEwHYDAH71BB4lqRfcmSJy6TKi7I9G9v0JPx2NAAnk1JPFL2XkmveSx9MZ/sMGcu82VmTpA/EzuRV4Du3AuWGIqcWB3Qy4xfUlANm/gGuB/JTiG5wq9bRTmbyhNAhMYU3Yc5ydk4NAEJtCvjt4sbq1GeaY2jK29f/zMhreFw8NpZiPbrJzPxXGZQFcRss2bNcew5XnyK9Wx7+4hZRw0WTp6wSN08MI4U= SRS@DESKTOP-99M97DV"
}
variable "ami" {
    type = string
    default = "ami-00af37d1144686454"
}
 variable "instance_type" {
    type = string
    default = "t2.micro"
 }
 