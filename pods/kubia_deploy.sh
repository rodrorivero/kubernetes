# Create a manifest file
$ alias k=kubectl
k run kubia --image luksa/kubia --dry-run -o yaml > kubia-manual.yaml

# Edit the manifest and create the pod
k apply –f kubia-manual.yaml
