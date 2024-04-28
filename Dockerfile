FROM grafana/grafana:10.4.2

RUN grafana-cli plugins install alexanderzobnin-zabbix-app
