#!/bin/bash

# Download the Helm installation script
curl -fsSL -o get_helm.sh https://raw.githubusercontent.com/helm/helm/main/scripts/get-helm-3

# Check if the download was successful
if [ -f get_helm.sh ]; then
    echo "Download successful."
    # Make the script executable
    chmod 700 get_helm.sh
    # Run the script with superuser privileges
    sudo sh get_helm.sh
else
    echo "Download failed. Please check the URL."
fi
