function Extend ($TimesRun)
{
    [int]$TimesRun = [int]$TimesRun + 1
    [System.Environment]::SetEnvironmentVariable('TimesRun',"$TimesRun",'Machine')
}

Write-Host "My job name is: $ENV:JOB_NAME"
try
{
	$TimesRun = [System.Environment]::GetEnvironmentVariable('TimesRun','Machine')
}
catch
{
    write-host $TimesRun
    [System.Environment]::SetEnvironmentVariable('TimesRun','1','Machine')
}
$TimesRun = [System.Environment]::GetEnvironmentVariable('TimesRun','Machine')
if([int]$TimesRun % 3 -eq 0)
{
    write-host "Third run!"
    Extend($TimesRun)
}
else
{
    Extend($TimesRun)
    Write-Error "Not the third run!"
}
