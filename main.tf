terraform {
  required_providers {
    proxmox = {
      source = "Telmate/proxmox"
      version = "2.6.4"
    }
  }
}

provider "proxmox" {
    pm_api_url = "https://${var.server_ip}:8006/api2/json"
    pm_user = var.pm_user
    pm_password = var.pm_password
    pm_tls_insecure = "true"
}

resource "proxmox_vm_qemu" "proxmox_vm" {
  count             = 4
  name              = "tf-vm-${count.index}"
  target_node       = "pve1" # name of the node
  clone             = "ubuntu-server-30"
  os_type           = "cloud-init"
  cores             = 4
  sockets           = "1"
  cpu               = "host"
  memory            = 2048
  scsihw            = "virtio-scsi-pci"
  bootdisk          = "scsi0"
  disk {
    #id              = 0
    size            = "20G"
    type            = "scsi"
    storage         = "local-lvm"
    #storage_type    = "local-lvm"
    iothread        = true
  }
  network {
    #id              = 0
    model           = "virtio"
    bridge          = "vmbr0"
  }
  lifecycle {
    ignore_changes  = [
      network,
    ]
  }
  # Cloud Init Settings
  # ipconfig0 = "ip=10.10.1.135${count.index + 1}/24,gw=10.10.1.1"
  sshkeys = <<EOF
    ${var.ssh_key}
  EOF
}