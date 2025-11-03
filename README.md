# windows-laptop-winget
WinGet Scripts for settin up a new device.  

As a Winget script it needs elevated privilages to run.  So you wither need to run it as `-RunAsAdmin` or launching terminal as Admin

```
.\winget-desktop-base-use.ps1 -RunAsAdmin
```

#### Troubleshooting 
If you see this error, you've downloaded the script and its marked as untrusted
```
.\winget-desktop-base-use.ps1 : File C:\Users\emanu\Downloads\winget-desktop-base-use.ps1 cannot be loaded because
running scripts is disabled on this system. For more information, see about_Execution_Policies at
https:/go.microsoft.com/fwlink/?LinkID=135170.
At line:1 char:1
+ .\winget-desktop-base-use.ps1
+ ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
    + CategoryInfo          : SecurityError: (:) [], PSSecurityException
    + FullyQualifiedErrorId : UnauthorizedAccess
```

This will grant privilages for the terminal session you are in only. So when you close the window, it will revert to normal permissions.
```
Set-ExecutionPolicy -ExecutionPolicy Bypass -Scope Process
```
