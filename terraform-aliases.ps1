# Terraform PowerShell Aliases
# Author: kcsdevops
# Description: PowerShell aliases for common Terraform commands to improve workflow efficiency

# Basic Terraform aliases
function Invoke-TerraformInit { terraform init }
function Invoke-TerraformApply { terraform apply }
function Invoke-TerraformDestroy { terraform destroy }
function Invoke-TerraformValidate { terraform validate }
function Invoke-TerraformPlan { terraform plan }
function Invoke-TerraformFormat { terraform fmt }

# Auto-approve aliases for faster deployment (use with caution)
function Invoke-TerraformApplyAutoApprove { terraform apply -auto-approve }
function Invoke-TerraformDestroyAutoApprove { terraform destroy -auto-approve }

# Set aliases
Set-Alias -Name tfi -Value Invoke-TerraformInit -Force
Set-Alias -Name tfa -Value Invoke-TerraformApply -Force
Set-Alias -Name tfd -Value Invoke-TerraformDestroy -Force
Set-Alias -Name tfv -Value Invoke-TerraformValidate -Force
Set-Alias -Name tfp -Value Invoke-TerraformPlan -Force
Set-Alias -Name tff -Value Invoke-TerraformFormat -Force

# Auto-approve aliases
Set-Alias -Name tfaa -Value Invoke-TerraformApplyAutoApprove -Force
Set-Alias -Name tfda -Value Invoke-TerraformDestroyAutoApprove -Force

Write-Host "Terraform aliases loaded successfully!" -ForegroundColor Green
Write-Host "Available aliases:" -ForegroundColor Yellow
Write-Host "  tfi  - terraform init" -ForegroundColor Cyan
Write-Host "  tfa  - terraform apply" -ForegroundColor Cyan
Write-Host "  tfd  - terraform destroy" -ForegroundColor Cyan
Write-Host "  tfv  - terraform validate" -ForegroundColor Cyan
Write-Host "  tfp  - terraform plan" -ForegroundColor Cyan
Write-Host "  tff  - terraform fmt" -ForegroundColor Cyan
Write-Host "  tfaa - terraform apply -auto-approve" -ForegroundColor Red
Write-Host "  tfda - terraform destroy -auto-approve" -ForegroundColor Red
