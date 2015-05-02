Copyright (C) 2014 Kim Halavakoski khalavakoski@gmail.com

Building and deploying Webserver infrastructure with Ansible
-----------------------------------------------------------------------------
These playbooks require Ansible => 1.8.2.

These playbooks have been created to automate the provisioning and deployment  
of webservers for demo purposes. 

Have a look at the Ansible documentation before proceeding: 
http://docs.ansible.com/intro.html

The Ansible configurations, playbooks and structure follow the best practices 
documented here as much as possible: 

http://docs.ansible.com/playbooks_best_practices.html


Infrastructure
--------------

The infrastructure consists of multiple servers running Ubuntu Linux. 
The inventory is documented in the following files in the /inventory 
directory:

    $ ls inventory/
    ec2_control

The ec2_control inventory contains references to localhost at the AWS commands
are run from localhost to AWS API.

All subsequent inventory operations will be done using the ec2.py inventory
script installed in the plugins/inventory directory:

$ ls -la plugins/inventory/
total 72
drwxr-x---  4 khalavak  staff   136B Mar 30 00:46 ./
drwxr-x---  3 khalavak  staff   102B Mar 30 00:46 ../
-rw-r-----  1 khalavak  staff   4.0K Jan 25 00:26 ec2.ini
-rw-r-----  1 khalavak  staff    26K Jan  1 13:35 ec2.py


The following commands must be run to first provision the EC2 instancers in
AWS and then deploy the configurations on the EC2 instances. I have separated
these into two separate playbooks for clarity but all actions could be done
in the same playbook.

    $ ansible-playbook -i inventory/ec2_control pb_webserver_provision.yml
    $ ansible-playbook -i plugins/inventory/ec2.py  pb_webserver_deploy.yml


This could be tested on vagrant instances first but this is something I have 
left out from these playbooks.

For more infromation on Vagrant see here : 

https://docs.vagrantup.com/v2/why-vagrant/index.html
https://julien.ponge.org/blog/scalable-and-understandable-provisioning-with-ansible-and-vagrant/
http://hakunin.com/six-ansible-practices#automate-adding-your-pub-key-to-vms

