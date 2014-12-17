## Prompt ##

function prompt {
    [console]::resetcolor()
    $p = split-path -leaf -path (get-location)
    "$p> "
}

# Aliases
new-alias subl 'c:\program files\sublime text 2\sublime_text.exe'

# POSIX
function touch ($name) { echo $null >> $name }

# Git
function co { git checkout }
function master { git checkout master }
function push { git push origin head }
function pull { git pull }
function stash { git stash }
function apply { git stash apply }

## Directories ##

function desktop { cd "$env:userprofile/desktop" }
function www { cd c:/inetpub/wwwroot }

