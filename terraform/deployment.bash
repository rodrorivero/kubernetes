# Preparing the cluster
# Deploy EC2 instance
    ssh-keygen -f keyname
    terraform init
    terraform apply-auto-approve
# Copy the installation files to the instance
    scp -i keyname init_kind.sh kind.yaml <your public IP>:/tmp
# Log into the instance
    ssh -i keyname <public ip>
# Update permissions
    cd /tmp
    chmod 755 init_kind.sh
# Run installation script. If the command errors out, exit ssh session, ssh to the instance again and re-run ./init_kind.sh
    ./init_kind.sh
# Verify the cluster in running
    kubectl get nodes
