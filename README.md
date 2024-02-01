# Automating AWS Infrastructure using Terraform

### This project was built in an environment pre-built with some infrastructure components such as a linux OS, terraform, and an AWS account with the proper resources needed to execute this project. Below is some information on how to set a linux  environment before moving forward in the project.

[Creating and Running a Linux Virtual Machine - MacOS](https://developer.apple.com/documentation/virtualization/creating_and_running_a_linux_virtual_machine)
 
[Creating and Running a Linux Virtual Machine - Windows](https://itsfoss.com/install-linux-in-virtualbox/)

[Setup Terraform on your VM](https://www.ibm.com/blog/how-to-install-terraform-on-a-linux-virtual-server-instance/)

### Expected deliverables
Launch an EC2 instance - Connect to the instance using Terraform -  Install Jenkins, Java, and Python on it.

After downloading and setting up terraform, choose the appropriate directory and create the .tf file.
![Screenshot 2024-01-27 at 11 25 52 AM](https://github.com/zubujams/aws-w-terraform/assets/52971863/8ae4777d-1b08-4648-bf1f-8acc7eeb4285)

Connect to your AWS account and run the .tf code to create the EC2 instance. This will include the region, access_key, and secret_key in the provider block. Then, in the resource block include the ami and instance type for the EC2 instance.
![Screenshot 2024-01-29 at 2 47 32 PM](https://github.com/zubujams/aws-w-terraform/assets/52971863/33929c42-1c0b-4f3d-b793-e2b6f231da55)


![Screenshot 2024-01-29 at 2 51 23 PM](https://github.com/zubujams/aws-w-terraform/assets/52971863/35e32657-0577-401d-b6cd-a69af2ddcf46)


Include the code needed to install git, java, and jenkins.
![Screenshot 2024-01-29 at 2 52 21 PM](https://github.com/zubujams/aws-w-terraform/assets/52971863/46440735-1d8c-410a-8cde-d89ece280a59)

![Screenshot 2024-01-29 at 2 55 47 PM](https://github.com/zubujams/aws-w-terraform/assets/52971863/3eecb9a8-71c7-45d8-9d89-0d774c4c4a51)
