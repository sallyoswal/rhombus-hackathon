Architecture:

1) Used Vagrant's perk/ubuntu-2204-arm64 with Qemu..I initially tried using virtual box, that threw errors showing incompatibility with platform architecture X86 is not supported on ARM.
2) Ran Vagrant init to setup the initial Vagrant file
3) Ran Vagrant up --provider qemu
4) Ran Vagrant global-status
5) Ran Vagrant ssh
6) Once I got into VM, I ran sudo apt-get update, then I ran the initialsetup.sh

which basically adds Docker, k3s, kubectl..

7) Once that was in place, I wrote my app 
8) Tried to test it by using docker build ..it ran good atleast the ping endpoint.
9) Tried to deploy using deploy.sh 


Current limitations: 
- The system-info endpoint and home endpoint are running into issues. 
