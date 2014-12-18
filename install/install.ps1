$applications = @(
    "sublime_text_3"
)

if (!(test-path bin)) {
    mkdir bin
}

foreach ($app in $applications) {
    invoke-expression -command "./install/$app"
}
