# See 
#  https://blogs.technet.microsoft.com/nanoserver/2016/10/07/updating-nano-server/
#  https://docs.microsoft.com/en-us/windows-server/get-started/update-nano-server
$os_version = (gcim Win32_operatingsystem).Version
 
# Windows Server 2016
if ($os_version -like '10.*') {
  $ci = New-CimInstance -Namespace root/Microsoft/Windows/WindowsUpdate -ClassName MSFT_WUOperationsSession
  Invoke-CimMethod -InputObject $ci -MethodName ApplyApplicableUpdates
}
