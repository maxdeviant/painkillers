$url = "http://c758482.r82.cf2.rackcdn.com/Sublime%20Text%20Build%203065%20x64%20Setup.exe"
$web = new-object system.net.webclient

$web.downloadfile($url, "$pwd/bin/sublime_text_3.exe")
