# Variables TF file

variable "ssh_key" {
    description = "This is going to be the ssh key"
    default = "ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABgQDmx+FSfTVgFQ3IixVK57DeXk3jhAG/UJHMK+fPqBXzcqW1aQjtMRBlUZaW8FlADGzoQdWuVpCqfIuv3eMOAPAs5iYmiJG9RQLpVjPNsWcRHNRymi7bzA2q63uxlVLhdMWO2A/XgiO8U3MUHIlSOE51wgzaWs6QUJjVOAlJCVXjKgs3OeF0ycCKH2FygN5Wn/s5br/tgtReBV4tW/14gYbJCMwHpUnXqPoYoBxAWcwCDIbeQ2yyqWUQq6uQymS/x/MqlfmSS77nsVVuroRWsOVPF2qK0t9cp14BqZ9T9603/5Yb6aiSYJrFmPA7r7GNLMiQDXgPEc97OQf7Z617ga7n7V/Qq+VdD2aZMOMANyeSlUpLjmDZtVYZmDMbu1UYnYvN/ywADmbpqAKFvYB/tm6Gi+h3Qk8Elrmx/Fuxn2ixoDY51++vE1y0eBLPSZnZuiGRqwY2lZzJkfl7NdG2ak9BJBYSnqaMMJHEhqhBVVrHZByMm9UBiVSRrYCJW8yu3rE= eduardosantana@Desktop345690"
}

variable "server_ip" {
    description = "This is going to be the ssh key"
    default = "10.10.1.101"
}

variable "pm_user" {
    description = "This is going to be the ssh key"
    default = "root@pam"
}

variable "pm_password" {
    description = "This is going to be the ssh key"
}