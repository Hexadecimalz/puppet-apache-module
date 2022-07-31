# @summary OS related variables and other variables 
class apache::params {
  $install_ensure = 'present' 
# call facter 
  case $::osfamily { 
    'RedHat': {
      $install_name = 'httpd' 
    }
    'Debian': {
      $install_name = 'apache2' 
    }
  }
}
