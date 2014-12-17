$ps_dir = "$env:userprofile\Documents\WindowsPowerShell"

if (!(test-path $ps_dir)) {
    mkdir $ps_dir
}

cp profile.ps1 ("$ps_dir\Microsoft.PowerShell_profile.ps1")
