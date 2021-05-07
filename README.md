# Ansible based Quobyte installer 

This playbook installs a Quobyte cluster from scratch. It uses no external resources like installer scripts and thus should be easy to read and understand for someone who is familiar with Ansible. 

To get started you need to configure an inventory (inventory.yaml is an example you can re-use). 
Also you need to adopt vars/ansible-vars to your needs.

After that you can use the numbered playbooks to install and configure a Quoybte cluster.

00_install_defaultserver.yaml: Adds Quobyte package repositories, installs Quobyte server packages.

01_install-coreservices.yaml: Installs registry, api and webconsole services. After this step you are able to login to your cluster.

02_add_metadataservices.yaml: Installs and starts Quobyte Metadata Service. Formats and labels the metadata device that you defined as a variable.

03_add_dataservices.yaml: Installs and start data service. Formats and uses all devices within a machine that are not already formatted. After this step you get a fully functional Quoybte cluster.

04_tune-cluster.yaml: Sets "sysctl" parameters with  the help of a Qoubyte profile for the "tuned" daemon. You can use it as a conveniency if you do not want to touch your system by yourself.

06_add_device_tags.yaml: This is an example of how to set device tags. Totally optional.





