
./p2pclusterdm -h 172.17.2.130 -p 35794 -g=172.17.2.130:35791 -icp 33011 >/dev/null 2>&1 &
./p2pclusterdm -h 172.17.2.130 -p 35797 -g=172.17.2.130:35791 -icp 33012 >/dev/null 2>&1 &
./p2pclusterdm -h 172.17.2.130 -p 35800 -g=172.17.2.130:35791 -icp 33013 >/dev/null 2>&1 &

ps -ef | grep p2p
