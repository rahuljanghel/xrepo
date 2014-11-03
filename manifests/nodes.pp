class zc {
        package {'zabbix-agent':
        ensure => installed,
        }
}

augeas { 'Set Zabbix Client config':
context => '/files/etc/zabbix/zabbix_agentd.conf',
changes => ['set Server 192.168.56.102'],
        }

augeas { 'Set Hostname':
context => '/files/etc/zabbix/zabbix_agentd.conf',
changes => ['set Hostname localhost'],
        }

augeas { 'Set PID':
context => '/files/etc/zabbix/zabbix_agentd.conf',
changes => ['set PidFile /var/run/zabbix/zabbix_agentd.pid'],
        }

augeas { 'Set LogFile':
context => '/files/etc/zabbix/zabbix_agentd.conf',
changes => ['set LogFile /var/log/zabbix/zabbix_agentd.log'],
        }

augeas { 'Set LogFileSize':
context => '/files/etc/zabbix/zabbix_agentd.conf',
changes => ['set LogFileSize 0'],
        }

augeas { 'Set ServerActive':
context => '/files/etc/zabbix/zabbix_agentd.conf',
changes => ['set ServerActive 127.0.0.1'],
        }
