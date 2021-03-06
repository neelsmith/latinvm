latinvm
=======

A vagrant virtual machine using VirtualBox to work with Megan Whitacre's epigraphy and Latin pedagogy resources.


## Requirements ##

- VirtualBox: <https://www.virtualbox.org/>
- Vagrant: <http://www.vagrantup.com/>
- a terminal or shell for starting you virtual machine from the command line 

## Strongly recommended ##

The VirtualBox Guest Additions for Vagrant.  After installing vagrant, you can install the guest additions by running from the root directory of this repository:

    vagrant plugin install vagrant-vbguest


## Usage ##

Open a terminal session to the virtual machine:

    vagrant ssh

From the prompt on the virtual machine, you can update your repositories and start up all the services you need 
by running the "refresh" script:

    sh /vagrant/refresh.sh

The webapp is served on port 8080 on the virtual machine, and forwarded to port 8888 on host, so you can point 
a browser on your regular host comuter at: `http://localhost:8888/citeservlet/`

## Further details ##

The refresh script builds an RDF graph of all data in the archive, and serves it from a SPARQL endpoint (fuseki).  This service is on port 3030 on the virtual machine, and is forwarded to port 3333 on the host machine.  If you would like to experiment directly with the SPARQL endpoint, point a browser or other SPARQL client at http://localhost:3333/


