Import-Module posh-git
Import-Module oh-my-posh
Set-Theme Paradox
Set-Alias code code-insiders
Function project() {
    Param(
        [Parameter(Mandatory=$true,Position=0)]
        [string]$command,
        [Parameter(Mandatory=$true,Position=1,ParameterSetName='new')]
        [string]$projectName,
        [Parameter(ParameterSetName='new')]
        [string]$path
    )
    if($command = "new"){
        Write-Host 'Creating' $projectName '...'
        if($path -ne ('')){
            Write-Host $path
            Set-Location $path
        }
        else{
            Set-Location '~/Sync/Git'
        }
        mkdir $projectName
        Set-Location $projectName
    }
}