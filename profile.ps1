## Prompt ##

function prompt {
    [console]::resetcolor()
    $p = split-path -leaf -path (get-location)
    "$p> "
}

## Aliases ##

new-alias subl "c:/program files/sublime text 2/sublime_text.exe"

## POSIX ##

function touch ($name) { echo $null >> $name }

## Helper ##

# Change directory, creating the folder if it does not exist
function cd_force ($dir) {
    if (!(test-path $dir)) {
        mkdir $dir
    }

    cd_v $dir
}

## Git ##

function co { git checkout }
function master { git checkout master }
function push { git push origin head }
function pull { git pull }
function stash { git stash }
function apply { git stash apply }

## Directories ##

function desktop { cd "$env:userprofile/desktop" }
function www { cd c:/inetpub/wwwroot }

## Gravic ##

function home { cd c:/code/gravic }
function website { cd c:/users/mbowers/documents/projects/website/remarksite }
function temp { cd_force z:/user/temp/meb }

## Init ##

set-location c:/code/gravic
