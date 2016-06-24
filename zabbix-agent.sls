zabbix-agent:
  '3.0.1':
    full_name: 'Zabbix agent 3.0.1'
    {% if grains['cpuarch'] == 'AMD64' %}
    installer: 'http://www.suiviperf.com/zabbix/zabbix_agent-3.0.1_x64.msi'
    {% elif grains['cpuarch'] == 'x86' %}
    installer: 'http://www.suiviperf.com/zabbix/zabbix_agent-3.0.1_x86.msi'
    {% endif %}
    install_flags: 'SERVER=127.0.0.1 LPORT=10050 SERVERACTIVE=127.0.0.1 RMTCMD=1 /qn'
    uninstaller: ''
    uninstall_flags: ''
    msiexec: True
    locale: en_US
    reboot: False