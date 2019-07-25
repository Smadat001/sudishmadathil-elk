# @summary A short summary of the purpose of this class
#
# A description of what this class does
#
# @example
#   include elk
class elk {
  user { 'admin100':
    ensure => 'present',
    password => 'temp123#',
  }
}
