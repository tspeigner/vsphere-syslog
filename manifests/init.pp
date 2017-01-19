class vsphere_syslog { 

  package { 'nokogiri':
    ensure	=> present,
    provider 	=> gem,
    name	=> 'nokogiri',
  }
 
  transport { 'lab':
    username => 'tseadmin@vsphere.local',
    password => 'Puppet4Life!',
    server   => 'tse-vc1-prod.corp.puppetlabs.net',
    options  => { 'insecure' => true },
  }

  esx_syslog { 'syssett':
    noop	   => true,
    default_rotate => '7',
    transport      => Transport['lab'],
  }

} 
