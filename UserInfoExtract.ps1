#First run the command "net user /domain >> CompanyUsers.txt" to get all of the domain users of the Organization.
$users= Get-Content CompanyUsers.txt # Append the result of the previous query into an array
foreach($line in $users){ # Read line by line the content of the file that is appended into users array. This is required for every line has 3 element. So i need to trim it.
  $user1=$line.substring(0,25).trim() # Take First column, trim spaces and write into a file.
  $user1 >> Cleanusers.txt
  $user2 = $line.substring(25,25).trim() # Take second column, trim spaces and write into a file.
  $user2 >> Cleanusers.txt
  $user3= $line.substring(50,25).trim() # Take third column, trim spaces and write into a file.
  $user3 >> Cleanusers.txt
  $queryusers = Get-Content Cleanusers.txt
foreach ($line2 in $queryusers) # take required parameters
{
  net user /domain $line2 | findstr "Comment Password expires User's comment active"›› result.txt
}
