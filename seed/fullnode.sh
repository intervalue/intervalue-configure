
nohup java -jar fullnode-2.0.0.jar intervalue_conf_file=./0config.yaml >/dev/null 2>&1 &
nohup java -jar fullnode-2.0.0.jar intervalue_conf_file=./1config.yaml >/dev/null 2>&1 &
nohup java -jar fullnode-2.0.0.jar intervalue_conf_file=./2config.yaml >/dev/null 2>&1 &

ps -ef|grep fullnode-2.0.0.jar
