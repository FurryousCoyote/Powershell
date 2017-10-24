# This Powershell script can be used to update or add users department.
# Use a csv file with the following columns labels: username,department
# Save this as .ps1

Import-Module ActiveDirectory

# UTF-8 encoding is needed if special characters such as Spanish/Portuguese accents are used.
$usernamelist = Import-Csv .\csv_file_name.csv -Encoding UTF8

foreach ($user in $usernamelist ) {
set-aduser -identity $user.username -department $user.department
}
