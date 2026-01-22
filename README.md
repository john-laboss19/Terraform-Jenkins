# Terraform Jenkins Deployment on AWS

This project demonstrates how to deploy a Jenkins server on AWS using Terraform to automate infrastructure provisioning using Infrastructure as Code (IaC).

The objective is to create a repeatable, version controlled Jenkins environment that can be deployed, validated, and removed efficiently.

## Project Goal

Provision a Jenkins server using Terraform so that:
- Infrastructure is created consistently across environments
- Changes are tracked in code
- Manual configuration in the AWS console is minimized
- Resources can be easily deployed and destroyed

## Project Scenario

A team wants to adopt Jenkins as their CI/CD tool for DevOps projects.  
They require a Jenkins server deployed through Terraform to ensure infrastructure changes are predictable, auditable, and reusable.

## Technologies Used

- Terraform (Infrastructure as Code)
- AWS EC2
- AWS Security Groups
- AWS S3
- Jenkins
- Bash (Bootstrap Script)
- GitHub

## Architecture Overview

The deployment includes:
- One EC2 instance running Jenkins
- A security group allowing:
  - SSH access from a trusted IP
  - Web access to Jenkins on port 8080
- A private S3 bucket for Jenkins artifacts
- A bootstrap script that installs and starts Jenkins automatically

## Prerequisites

- AWS account
- Terraform installed
- AWS CLI configured locally
- IAM user with programmatic access
- Code editor (VS Code recommended)

## Project Steps

### Step 1: Create the GitHub Repository
- Created a GitHub repository to store Terraform configuration files
- Added a README and Terraform `.gitignore`
- Cloned the repository locally for development

---

### Step 2: Configure the Terraform Provider
- Defined the AWS provider and region
- Used variables to avoid hardcoding environment-specific values
- Ensured the configuration could be reused in other environments

---

### Step 3: Define Infrastructure Resources
Terraform was used to provision:
- An EC2 instance to host Jenkins
- A security group allowing SSH and Jenkins web access
- An S3 bucket to store Jenkins artifacts securely

---

### Step 4: Bootstrap Jenkins Installation
- Created a shell script to automatically install and start Jenkins on the EC2 instance
- Referenced official Jenkins documentation to ensure best practices
- Attached the script to the EC2 instance so Jenkins starts on first boot

---

### Step 5: Use Variables for Flexibility
- Defined reusable variables for:
  - AWS region
  - AMI ID
  - Key pair name
  - Trusted IP address
  - Security group name
- This approach makes the deployment easier to maintain and scale

---

### Step 6: Execute the Terraform Workflow
- Initialized the Terraform project
- Validated and reviewed the infrastructure plan
- Applied the configuration to create AWS resources
- Confirmed all resources were created successfully

---

### Step 7: Verify Jenkins Deployment
- Verified the EC2 instance was running
- Confirmed Jenkins service was active on the server
- Accessed the Jenkins web interface through the browser
- Completed initial Jenkins setup and confirmed dashboard access

---

### Step 8: Clean Up Resources
- Destroyed all infrastructure using Terraform
- Ensured no unnecessary AWS resources remained active

---

## Results

- Jenkins server successfully deployed using Terraform
- Infrastructure managed entirely through code
- Secure access configured through security groups
- Jenkins is verified and accessible via web interface
  
## Documentation

A full step-by-step walkthrough of this project is available on Medium:

**Deploy a Jenkins Server with Terraform** https://medium.com/@labossiere01/deploy-a-jenkins-server-with-terraform
