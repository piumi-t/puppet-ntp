define ntp::data {
  $package_name       = 'ntp'
  $package_ensure     = 'present'
  $config_name        = 'ntp.conf'
  $config_ensure      = 'file'
  $config_file_owner  = 'root'
  $config_file_group  = 'root'
  $config_file_mode   = '0664'
  $servers            = ['paka.0', 'paka.1']
  $service_ensure     = 'running'
  $service_enable     = true
  $service_hasrestart = true
  $service_hasstatus  = true

  $service_name = $facts['os']['family'] ? {
    'RedHat' => 'ntpd',
    'Debian' => 'ntp',
    default  => fail("${facts['operatingsystem']} is not supported"),
  }

}
