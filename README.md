# Ansible based Quobyte installer 

This approach mimics a manual Quobyte install without taking any shortcut using the official Quobyte installer shell script.

In the first step it installs only a "pure" Quobyte cluster and does not do any optimization or install any third party tools like NTP daemon, numactl, 
network-tuning tool or things like that.

I a second step it installs tuned and enables the tuned profile that is delivered via the quobyte-server package.
Thus the 02_tune-cluster.yaml playbook depends on a successfully installed quobyte-server package.





