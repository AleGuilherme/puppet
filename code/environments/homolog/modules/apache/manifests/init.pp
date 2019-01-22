class apache {

package { "apache2":
           ensure => present
        }

file {"/var/www/html/index.html":
           source => "puppet:///modules/apache/index.html",
           ensure => present
         }

service { "apache2":
           ensure => running
        }
}
