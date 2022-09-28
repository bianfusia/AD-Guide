# Enumeration through PowerShell

- Get user details
```
Get-ADUser -Identity gordon.stevens -Server za.tryhackme.com -Properties *
```

- Filter user with wildcard and table
```
Get-ADUser -Filter 'Name -like "*stevens"' -Server za.tryhackme.com | Format-Table Name,SamAccountName -A
```

- Enumerate AD group
```
Get-ADGroup -Identity Administrators -Server za.tryhackme.com -Properties *
```

- Get AD Group membership
```
Get-ADGroupMember -Identity Administrators -Server za.tryhackme.com
```

- Example of using Get-ADObject filter with bad password count (Can filter with other objects like date changed as well)
```
Get-ADObject -Filter 'badPwdCount -gt 0' -Server za.tryhackme.com
```

- Get additional info about a server
```
Get-ADDomain -Server za.tryhackme.com
```

- Example of altering (refer to exploitation for more)
```
Set-ADAccountPassword -Identity gordon.stevens -Server za.tryhackme.com -OldPassword (ConvertTo-SecureString -AsPlaintext "old" -force) -NewPassword (ConvertTo-SecureString -AsPlainText "new" -Force)
```

