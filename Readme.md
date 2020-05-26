# Ansible playbook to provision infra using terraform 

## Requirements : 
Ansible 2.5+
Terraform 
AWS CLI and role
git

## Steps 
1) In the ansible master server, create a role for github
2) clone the ansible playbooks 

To install and clone the terrafrom modules in client server, run the following playbook

```
ansible-playbook terraform_setup.yml
```

We are provisioning a ec2 server with webserver running on a variable port, port will be the input for the terraform

To provision the infra, run the following playbook

```
ansible-playbook terraform_inital.yml
```







