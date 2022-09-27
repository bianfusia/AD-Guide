# Credential Injection

## Runas
```
runas.exe /netonly /user:<domain>\<username> cmd.exe
```
- /netonly - Since we are not domain-joined, we want to load the credentials for network authentication but not authenticate against a domain controller. So commands executed locally on the computer will run in the context of your standard Windows account, but any network connections will occur using the account specified here.

- Need to locally be an admin to run admin cmd.

- Once you run this command, you will be prompted to supply a password. Note that since we added the /netonly parameter, the credentials will not be verified directly by a domain controller so that it will accept any password. We still need to confirm that the network credentials are loaded successfully and correctly.

