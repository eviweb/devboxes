DevBoxes
========
Set of [Packer](https://www.packer.io/) templates.    

Requirements
------------
The `packer` command must first be installed on your machine as described [here](https://www.packer.io/docs/installation.html).   

Build a boxe
------------
1. First clone this repository: `git clone https://github.com/eviweb/devboxes && cd devboxes`   
2. From within the project directory, run: `packer build PACKER_FILE` where *PACKER_FILE* is one of the Packer templates.

Boxes
-----
### umini-1404
A frenchie ubuntu minimal box...   

* **Vagrant provider**: libvirt
* **OS**: Ubuntu Trusty 14.04.4 LTS
* **Base ISO**: [minimal CD](http://archive.ubuntu.com/ubuntu/dists/trusty/main/installer-amd64/current/images/netboot/mini.iso)
* **Linux Kernel**: linux-signed-generic 3.13.0
* **Architecture**: amd64
* **Packages**:
    * openssh-server
    * curl
    * unzip
    * nfs-common
* **Locale**: fr_FR.UTF-8
* **Timezone**: Europe/Paris
* **RAM**: 512MB
* **HD size**: 8GB
* **Partition template**: LVM with separated _/home_
* **User/Password**: _vagrant/vagrant_
* **Root privileges**: yes _(sudo without password)_
* **Authorized_keys**: vagrant insecure public key
* **Packer template**: ubuntu-1404-amd64-mini-libvirt-fr.json
* **Build command**: `packer build ./ubuntu-1404-amd64-mini-libvirt-fr.json`

License
-------
This project is licensed under the terms of the [MIT License](/LICENSE)

> **Note**: this package is grandly inspired by [jakobadam/packer-qemu-templates](https://github.com/jakobadam/packer-qemu-templates.git)
