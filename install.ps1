$packages = @(
    @{
        title='Sublime Text 3';
        version='3065';
        url='http://c758482.r82.cf2.rackcdn.com/Sublime%20Text%20Build%203065%20x64%20Setup.exe';
        arguments='/verysilent /norestart /tasks="contextentry"';
    }
)

if (!(test-path bin)) {
    mkdir bin
}

$web = new-object system.net.webclient

foreach($package in $packages) {
    $name = $package.title
    $version = $package.version

    echo "Downloading $name"

    $web.downloadfile($package.url, "$pwd/bin/$name v$version.exe")

    $arguments = $package.arguments

    echo "Installing $name"

    invoke-expression -command "$pwd/bin/'$name v$version.exe' $arguments"
}

echo "Finished package installations"

rm -recurse -force bin
