# Class: kibana::params
#
class kibana::params {
  $ensure           = 'present'
  $config           = {}
  $manage_repo      = true
  $repo_key_id      = '46095ACC8548582C1A2699A9D27D666CD88E42B4'
  $repo_key_source  = 'https://artifacts.elastic.co/GPG-KEY-elasticsearch'
  $repo_priority    = undef
  $repo_proxy       = undef
  $repo_version     = '5.x'
  $user             = 'kibana'
  $group            = 'kibana'

  if $::osfamily in [ 'RedHat','Amazon' ] and $::lsbmajdistrelease >= 7 {
    $service_provider = 'systemd'
  }elsif $::osfamily == 'Debian' and $::lsbmajdistrelease >= 8 {
    $service_provider = 'systemd'
  }else{
    $service_provider = undef
  }
}
