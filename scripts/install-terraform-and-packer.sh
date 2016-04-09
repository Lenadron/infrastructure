cd /usr/local/
mkdir terraform_0_6_14
mkdir packer_0_10_0
cd terraform_0_6_14
curl -O https://releases.hashicorp.com/terraform/0.6.14/terraform_0.6.14_darwin_amd64.zip
unzip terraform_0.6.14_darwin_amd64.zip

cd /usr/local/packer_0_10_0
curl -O https://releases.hashicorp.com/packer/0.10.0/packer_0.10.0_darwin_amd64.zip
unzip packer_0.10.0_darwin_amd64.zip

echo '
# Terraform & Packer Paths.
export PATH=/usr/local/packer_0_10_0/:/usr/local/terraform_0_6_14/:$PATH
' >>~/.bash_profile

source ~/.bash_profile

terraform
packer


