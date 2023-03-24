## This goes in your $HOME directory

### UI
Import-Module -Name Terminal-Icons

#oh-my-posh --init --shell pwsh --config C:\Users\rofaucon\AppData\Local\Programs\oh-my-posh\themes/M365Princess-kube.omp.json | Invoke-Expression
#oh-my-posh --init --shell pwsh --config C:\Users\rofaucon\AppData\Local\Programs\oh-my-posh\themes/M365Princess-python.omp.json | Invoke-Expression
oh-my-posh --init --shell pwsh --config C:\Users\rofaucon\AppData\Local\Programs\oh-my-posh\themes/craver.omp.json | Invoke-Expression
#oh-my-posh --init --shell pwsh --config C:\Users\rofaucon\AppData\Local\Programs\oh-my-posh\themes/default.omp.json | Invoke-Expression
#oh-my-posh --init --shell pwsh --config C:\Users\rofaucon\AppData\Local\Programs\oh-my-posh\themes/atomic.omp.json | Invoke-Expression
#oh-my-posh --init --shell pwsh --config C:\Users\rofaucon\AppData\Local\Programs\oh-my-posh\themes/blueish.omp.json | Invoke-Expression
Import-Module posh-git
$env:POSH_GIT_ENABLED = $true
$env:POSH_AZURE_ENABLED = $true


#### common aliases ####
Set-Alias g git
Set-Alias fck fuck
Set-Alias vim nvim
Set-Alias vi nvim
Set-Alias ll ls
Set-Alias grep findstr
Set-Alias -Name k -Value kubectl
Set-Alias -Name tf -Value terraform


#### auto complete && suggestions #####
## fuck
$env:PYTHONIOENCODING="utf-8"
iex "$(thefuck --alias)"

Import-Module PSReadLine
Enable-PowerType
Set-PSReadLineOption -PredictionSource HistoryAndPlugin 
Set-PSReadLineOption -PredictionViewStyle ListView
Set-PSReadLineOption -EditMode Windows

# Import the Chocolatey Profile that contains the necessary code to enable
# tab-completions to function for `choco`.
# Be aware that if you are missing these lines from your profile, tab completion
# for `choco` will not function.
# See https://ch0.co/tab-completion for details.
$ChocolateyProfile = "$env:ChocolateyInstall\helpers\chocolateyProfile.psm1"
if (Test-Path($ChocolateyProfile)) {
  Import-Module "$ChocolateyProfile"
}
