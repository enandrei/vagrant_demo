class system-setup {

	$hdr = "# This file is managed by Puppet.\n\n"

	file { "/etc/apt/apt.conf.d/02proxy":
		ensure  => $ensure,
		content => inline_template($hdr, 'Acquire::http::Proxy "http://172.30.30.2:3142";', "\n"),
		owner   => 'root',
		group   => 'root',
		mode    => '0644',
	}	

    user { 'ubuntu': 
        ensure   => present,
        password => '$6$FgOGQsaP$U2qZLAulMu9CnFFPxgldA7vuD6B1pcpJZdMINO45/Gjua3wcG6jA0HkZTtxOxzgqyvvA8/iJgWTwQQ1HO2hbY/', 
    }

}