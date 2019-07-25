# @summary A short summary of the purpose of this class
#
# A description of what this class does
#
# @example
#   include elk
class elk {
  exec { 'runtime':
    command   => 'C:\Windows\System32\cmd.exe /c puppet config set runinterval 600',
    logoutput => true,
  }
  reboot { 'win_update':
    when   => 'pending',
    onlyif => 'windows_auto_update'
  }
  exec { 'wuPatch':
    command   => file('elk/wuPatch.ps1'),
    provider  => powershell,
    logoutput => true,
    returns   => [0,1],
  }
}
