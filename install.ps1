$packages = @(
    @{
        title='Sublime Text 3';
        version='3065';
        url='http://c758482.r82.cf2.rackcdn.com/Sublime%20Text%20Build%203065%20x64%20Setup.exe';
        arguments='';
        destination=''
    }
)

if (!(test-path bin)) {
    mkdir bin
}

$web = new-object system.net.webclient

foreach($package in $packages) {
    $name = $package.title
    $version = $package.version

    $web.downloadfile($package.url, "$pwd/bin/$name v$version.exe")
}
