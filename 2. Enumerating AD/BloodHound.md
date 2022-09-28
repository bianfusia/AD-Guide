# Bloodhound

## Step 1. SharpHound
- You need you copy the ```Sharphound.exe``` over to AD computer first.
- You should get a zip file after running the following
```
.\SharpHound.exe --CollectionMethods All --Domain za.tryhackme.com --ExcludeDCs
```

## Step 2. BloodHound

1. Run ```neo4j console start```
2. In another terminal run ```bloodhound --no-sandbox```
3. default creds is ```neo4j:neo4j```
4. copy the zip to your kali machine, one way is to use ```scp```
```
scp <AD Username>@THMJMP1.za.tryhackme.com:C:/Users/<AD Username>/Documents/<Sharphound ZIP> .
```
5. Import the file by clicking ```Upload Data```.
6. Click on the 3 stripes scroll down and click ```Refresh Database```

## Step 3. Finding Exploit
1. At the ```Start Node``` next to the 3 stripes, search for your starting node and double click
2. Click on the node disaplyed in the GUI to view the info.

| Fields | Description |
| --- | --- |
| Overview | Provides summaries information such as the number of active sessions the account has and if it can reach high-value targets. |
| Node Properties | Shows information regarding the AD account, such as the display name and the title. |
| Extra Properties | Provides more detailed AD information such as the distinguished name and when the account was created. |
| Group Membership | Shows information regarding the groups that the account is a member of. |
| Local Admin Rights | Provides information on domain-joined hosts where the account has administrative privileges. |
| Execution Rights | Provides information on special privileges such as the ability to RDP into a machine. |
| Outbound Control Rights | Shows information regarding AD objects where this account has permissions to modify their attributes. |
| Inbound Control Rights |  Provides information regarding AD objects that can modify the attributes of this account. |

3. Start is our node and end node will be the admin with server control

