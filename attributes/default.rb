default['monit']['startup']                    = "1" 
default['monit']['daemon_interval']            = "60"
default['monit']['startup_delay']              = "240"
default['monit']['logging_facility']           = "syslog facility log_daemon"
default['monit']['id_file']                    = "/var/.monit.id"
default['monit']['state_file']                 = "/var/.monit.state"
default['monit']['primary_mailserver']         = nil
default['monit']['backup_mailserver']          = nil
default['monit']['fallback_relay']             = "localhost"
default['monit']['eventqueue_basedir']         = "/var/monit"
default['monit']['eventqueue_slots']           = "100"
# mmonit format "http://monit:monit@192.168.1.10:8080/collector"
default['monit']['mmonit']                     = nil
# set mail-format { from: monit@foo.bar }
default['monit']['mail-format']                = "from: monit@foo.bar"
# set alert sysadm@foo.bar                       # receive all alerts
# set alert manager@foo.bar only on { timeout }  # receive just service-
#                                                # timeout alert
default['monit']['alert_email']                = "monit@foo.bar"
default['monit']['service_email']              = "monit@foo.bar"
# set httpd port 2812 and
#     use address localhost  # only accept connection from localhost
#     allow localhost        # allow localhost to connect to the server and
#     allow admin:monit      # require user 'admin' with password 'monit'
#     allow @monit           # allow users of group 'monit' to connect (rw)
#     allow @users readonly  # allow users of group 'users' to connect readonly
default['monit']['httpd_port']                 = "2812"
default['monit']['httpd_use_address']          = "localhost"
default['monit']['httpd_allow_address']        = "localhost"
