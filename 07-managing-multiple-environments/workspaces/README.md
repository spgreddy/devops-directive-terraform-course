Warning about manually switching environments
```
terraform workspace new production
terraform workspace list
terraform workspace select staging
```
TODO
- Managing environments
  - Show workspaces approach
  - terraform workspace new production
  - terraform workspace list
  - terraform workspace select staging
- Show directory structure approach
  - some "global" resources
- Isolated AWS accounts


PS C:\personal\terraform\devops-directive-terraform-course\07-managing-multiple-environments\workspaces> terraform init

Initializing the backend...

Successfully configured the backend "s3"! Terraform will automatically
use this backend unless the backend configuration changes.
Initializing modules...
- web_app in ..\..\06-organization-and-modules\web-app-module

Initializing provider plugins...
- Finding hashicorp/aws versions matching "~> 3.0"...
- Installing hashicorp/aws v3.76.1...
- Installed hashicorp/aws v3.76.1 (signed by HashiCorp)

Terraform has created a lock file .terraform.lock.hcl to record the provider
selections it made above. Include this file in your version control repository
so that Terraform can guarantee to make the same selections by default when
you run "terraform init" in the future.

Terraform has been successfully initialized!

You may now begin working with Terraform. Try running "terraform plan" to see
any changes that are required for your infrastructure. All Terraform commands
should now work.

If you ever set or change modules or backend configuration for Terraform,
rerun this command to reinitialize your working directory. If you forget, other
commands will detect it and remind you to do so if necessary.
PS C:\personal\terraform\devops-directive-terraform-course\07-managing-multiple-environments\workspaces> terraform workspace list
* default

PS C:\personal\terraform\devops-directive-terraform-course\07-managing-multiple-environments\workspaces> terraform workspace new production
Created and switched to workspace "production"!

You're now on a new, empty workspace. Workspaces isolate their state,
so if you run "terraform plan" Terraform will not see any existing state
for this configuration.
PS C:\personal\terraform\devops-directive-terraform-course\07-managing-multiple-environments\workspaces> terraform workspace list
  default
* production
PS C:\personal\terraform\devops-directive-terraform-course\07-managing-multiple-environments\workspaces> terraform init

Initializing the backend...

Successfully configured the backend "s3"! Terraform will automatically
use this backend unless the backend configuration changes.
Initializing modules...
- web_app in ..\..\06-organization-and-modules\web-app-module

Initializing provider plugins...
- Finding hashicorp/aws versions matching "~> 3.0"...
- Installing hashicorp/aws v3.76.1...
- Installed hashicorp/aws v3.76.1 (signed by HashiCorp)

Terraform has created a lock file .terraform.lock.hcl to record the provider
selections it made above. Include this file in your version control repository
so that Terraform can guarantee to make the same selections by default when
you run "terraform init" in the future.

Terraform has been successfully initialized!

You may now begin working with Terraform. Try running "terraform plan" to see
any changes that are required for your infrastructure. All Terraform commands
should now work.

If you ever set or change modules or backend configuration for Terraform,
rerun this command to reinitialize your working directory. If you forget, other
commands will detect it and remind you to do so if necessary.
PS C:\personal\terraform\devops-directive-terraform-course\07-managing-multiple-environments\workspaces> terraform workspace list
* default

PS C:\personal\terraform\devops-directive-terraform-course\07-managing-multiple-environments\workspaces> terraform workspace new production
Created and switched to workspace "production"!

You're now on a new, empty workspace. Workspaces isolate their state,
so if you run "terraform plan" Terraform will not see any existing state
for this configuration.
PS C:\personal\terraform\devops-directive-terraform-course\07-managing-multiple-environments\workspaces> terraform workspace list
  default
* production
PS C:\personal\terraform\devops-directive-terraform-course\07-managing-multiple-environments\workspaces> terraform init

Initializing the backend...

Successfully configured the backend "s3"! Terraform will automatically
use this backend unless the backend configuration changes.
Initializing modules...
- web_app in ..\..\06-organization-and-modules\web-app-module

Initializing provider plugins...
- Finding hashicorp/aws versions matching "~> 3.0"...
- Installing hashicorp/aws v3.76.1...
- Installed hashicorp/aws v3.76.1 (signed by HashiCorp)

Terraform has created a lock file .terraform.lock.hcl to record the provider
selections it made above. Include this file in your version control repository
so that Terraform can guarantee to make the same selections by default when
you run "terraform init" in the future.

Terraform has been successfully initialized!

You may now begin working with Terraform. Try running "terraform plan" to see
any changes that are required for your infrastructure. All Terraform commands
should now work.

If you ever set or change modules or backend configuration for Terraform,
rerun this command to reinitialize your working directory. If you forget, other
commands will detect it and remind you to do so if necessary.
PS C:\personal\terraform\devops-directive-terraform-course\07-managing-multiple-environments\workspaces> terraform workspace list
* default

PS C:\personal\terraform\devops-directive-terraform-course\07-managing-multiple-environments\workspaces> terraform workspace new production
Created and switched to workspace "production"!

You're now on a new, empty workspace. Workspaces isolate their state,
so if you run "terraform plan" Terraform will not see any existing state
for this configuration.
PS C:\personal\terraform\devops-directive-terraform-course\07-managing-multiple-environments\workspaces> terraform workspace list
  default
* production
PS C:\personal\terraform\devops-directive-terraform-course\07-managing-multiple-environments\workspaces> terraform apply
PS C:\personal\terraform\devops-directive-terraform-course\07-managing-multiple-environments\workspaces> terraform destroy

PS C:\personal\terraform\devops-directive-terraform-course\07-managing-multiple-environments\workspaces> terraform workspace select default
Switched to workspace "default".
PS C:\personal\terraform\devops-directive-terraform-course\07-managing-multiple-environments\workspaces> terraform workspace delete production
Acquiring state lock. This may take a few moments...
Releasing state lock. This may take a few moments...
Deleted workspace "production"!


PS C:\personal\terraform\devops-directive-terraform-course\07-managing-multiple-environments\workspaces> terraform workspace default
Usage: terraform [global options] workspace

  new, list, show, select and delete Terraform workspaces.

Subcommands:
    delete    Delete a workspace
    list      List Workspaces
    new       Create a new workspace
    select    Select a workspace
    show      Show the name of the current workspace

