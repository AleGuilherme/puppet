class httpd {

package { "httpd":
           ensure => present
        }

service { "httpd":
           ensure => running
        }
}
