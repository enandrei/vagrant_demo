class system-update {

    $sysPackages = [ "lubuntu-desktop","sublime-text-installer","git","curl" ]
    #$sysPackages = [ "sublime-text-installer" ]

    include apt

    apt::ppa { 'ppa:webupd8team/sublime-text-3':} 

    package { $sysPackages:
        ensure => "installed",
        require => Exec['apt_update']
    }
}