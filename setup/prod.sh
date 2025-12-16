#!/bin/bash

# Update package list
apt update

# Upgrade installed packages
apt upgrade -y

# Ask for hostname and update it
read -p "Enter new hostname: " new_hostname
if [ -n "$new_hostname" ]; then
    echo "Setting hostname to: $new_hostname"
    hostnamectl set-hostname "$new_hostname"

    # Update /etc/hosts
    sed -i "s/^127\.0\.1\.1.*/127.0.1.1\t$new_hostname/" /etc/hosts

    echo "Hostname updated successfully in system and /etc/hosts!"
fi
