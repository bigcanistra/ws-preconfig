# Ubuntu is a default sudo user preinstalled on PC for settings
# Please replace {host name_or_up} to host name, IP address or inv file
Host=127.0.0.1
user="ubuntu"
sudo chown $user:$user /home/$user/.ssh/known_hosts
ssh-keygen -f "/root/.ssh/known_hosts" -R $Host
ssh-keygen -f "/home/$user/.ssh/known_hosts" -R $Host
ssh $user@$Host
sudo chown $user:$user /home/$user/.ssh/known_hosts
ansible-playbook main.yml -i "$Host," -e ansible_ssh_user=$user -kK $1 
