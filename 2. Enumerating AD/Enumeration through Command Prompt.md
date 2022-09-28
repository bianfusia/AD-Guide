# Enumeration through Command Prompt

- To list all user in domain
```
net user /domain
```

- To list 1 specific user in domain
```
net user zoe.marshall /domain
```

- To list type of groups available in domain (example T0 admin, T1 admin etc)
```
net group /domain
```

- List users in specific group
```
net group "Tier 1 Admins" /domain
```

- List the password policy
```
net accounts /domain
```

- Note: The net commands may not show all information. For example, if a user is a member of more than ten groups, not all of these groups will be shown in the output.
