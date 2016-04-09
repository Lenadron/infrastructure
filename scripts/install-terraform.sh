cd /usr/local/
mkdir terraform_0_6_14
cd terraform_0_6_14
curl -O https://releases.hashicorp.com/terraform/0.6.14/terraform_0.6.14_darwin_amd64.zip
unzip terraform_0.6.14_darwin_amd64.zip

cat <<EOT >> ~/.bash_profile

# Terraform Path.
export PATH="/usr/local/terraform_0_6_14/:$PATH"

EOT

source ~/.bash_profile

terraform