# For apply before move pc to workplace.
# Please, edit the first part of the command below:

# Ubuntu is a default sudo user preinstalled on PC for settings ansible_SSH_private_key_file contains the path to the private SSH key for this user
# Please set inventory file after -i
# please write -e vlan_tag=" " if you use tagged vlan

ansible-playbook main.yml -i inventory -vv
