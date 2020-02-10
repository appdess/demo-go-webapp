workflow "deploy VM from content library" {

resolves = ["lamw/deploy-vm-from-content-library"]
on = "push"
}

action "docker://lamw/deploy-vm-from-content-library" {
  uses ="docker://lamw/deploy-vm-from-content-library"
  secrets = ["GOVC_PASSWORD"]
    env = {
    GOVC_URL=https://<vcenter>/sdk
    GOVC_USERNAME=*protected email*
    GOVC_DATACENTER=SDDC-Datacenter
    GOVC_NETWORK=sddc-cgw-network-1
    GOVC_DATASTORE=WorkloadDatastore
    GOVC_FOLDER=Workloads
    GOVC_RESOURCE_POOL=Compute-ResourcePool
    LIBRARY_NAME=Customer[0]
    LIBRARY_TEMPLATE=PhotonOS-Template
    VM_NAME=Validate-New-Background-Image
      }
    }
