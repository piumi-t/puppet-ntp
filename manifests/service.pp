class ntp::service(
  String $service_name,
  Boolean $service_enable,
  String $service_ensure,
  Boolean $service_hasstatus,
  Boolean $service_hasrestart,
) {
  service { 'ntp_service':
    ensure     => $service_ensure,
    name       => $service_name,
    enable     => $service_enable,
    hasstatus  => $service_hasstatus,
    hasrestart => $service_hasrestart,
  }
}
