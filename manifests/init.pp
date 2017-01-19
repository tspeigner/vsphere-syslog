class vsphere_syslog { 
 
  transport { 'lab':
    username => 'tseadmin@vsphere.local',
    password => 'puppetlabs',
    server   => 'tse-vc1-prod.corp.puppetlabs.net',
    options  => { 'insecure' => true },
  }

  esx_syslog { 'syssett':
    noop	   => true,
    default_rotate => '7',
    transport => Transport['lab'],
  }

} 
