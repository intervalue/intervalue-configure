
nohup java -jar seed-2.0.0.jar intervalue_conf_file=./config.yaml >/dev/null 2>&1 &

ps -ef|grep seed-2.0.0.jar
