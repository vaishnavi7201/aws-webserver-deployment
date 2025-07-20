🚀 Project Title: Secure Web Server Deployment on AWS EC2 with Automated S3 Backup

🛠️ Technologies Used:
AWS EC2, S3, EBS, IAM, Linux (Bash), NGINX, AWS CLI

📄 Project Overview:
This project demonstrates the complete setup of a secure and scalable web server hosted on AWS EC2, with additional EBS storage and automated backup to an S3 bucket using scheduled cron job.

🔧 Key Steps & Configurations:
1. IAM Setup with Least Privilege Access
Created an IAM user with permissions for EC2 Full Access, S3 Full Access, and IAM Full Access.

Attached a custom-managed IAM policy restricting access to only required S3 actions (GetObject, PutObject) for the specific bucket and its contents.

2. EC2 Instance Launch
Deployed a Red Hat Linux EC2 instance.

Configured the security group to allow SSH (port 22) and HTTP (port 80) as inbound traffic.

3. EBS Volume Integration
Attached an additional 100GB EBS volume to the EC2 instance.

Mounted, and configured it as the application directory.

4. Web Content Deployment
Copied static website files to the mounted EBS volume for persist storage to ensure even if EC2 instance terminates due to any faults, this additional data vloume safeguards the website files

5. NGINX Web Server Setup
Installed NGINX as the web server.

Replaced the default NGINX welcome page with custom website files.
 
Hosted the website at path: /usr/share/nginx/html/.

Started and enabled the NGINX service using systemctl command.

6. Automated Backup using Cron + AWS CLI
Installed AWS CLI and configured access using the IAM Access Key IDs

Scheduled a cron job to periodically sync web content files from the EBS volume to the S3 bucket for backup, ensuring data can be accessed easily through s3 bucket if EBS fails.

7. Public Web Access Validation
Verified successful website deployment by accessing the public IP of the EC2 instance.

🎯 Key Learnings:
Hands-on experience with cloud infrastructure deployment and automation.

Understood how IAM, EC2, EBS, S3, and web hosting work together.

Gained confidence in Linux system administration, security group configurations, and AWS CLI scripting.

Gained knowledge on how the applications are deployed on cloud platform in real-world scenarios.
