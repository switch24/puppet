class classwork {
	file {
		["/var/classwork/", 
		"/var/classwork/shared/",
		"/var/classwork/shared/config/"]:
			ensure => directory,
			owner => railsadmin,
			group => railsadmin,
			mode => 775
	}
	file {
		"/var/classwork/shared/config/database.yml":
			ensure => present,
			owner => railsadmin,
			group => railsadmin,
			mode => 600,
			source => "puppet:///modules/classwork/database.yml"
	}
	package { 
		"bundler":
			provider => gem
	}

}
