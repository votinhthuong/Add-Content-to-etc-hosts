@echo off
SET hosts=%windir%\system32\drivers\etc\hosts
attrib -r %hosts%
echo. >>%hosts%
FOR %%A IN (

<ip address>
<domain name>

) DO (
 echo 127.0.0.1 %%A >>%hosts%
)
attrib +r %hosts%
echo Successfully added entries





