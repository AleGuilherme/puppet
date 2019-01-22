class general {

case $::osfamily {
        "RedHat": {
             $pacotes = ["epel-release","git","htop"]
             $web = "httpd"
         }

        "Debian": {
             $pacotes = ["git","htop"]
             $web = "apache2"
         }
}

package { $pacotes:
          ensure => present
        }

service { $web:
          ensure => stopped
        }
}
