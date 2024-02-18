# Add-Content-to-etc-hosts
Add new domain or IP address to C:\Windows\System32\etc\hosts


@echo off
SET hosts=%windir%\system32\drivers\etc\hosts
attrib -r %hosts%
echo. >>%hosts%
FOR %%A IN (

127.0.0.1

) DO (
 echo 127.0.0.1 %%A >>%hosts%
)
attrib +r %hosts%
echo Successfully added entries
