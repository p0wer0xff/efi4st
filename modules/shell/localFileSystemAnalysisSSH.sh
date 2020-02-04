#!/bin/bash
echo "# [start]:  List proc (PROC)"
cd /home/admiral-helmut/MA/efi4st/modules/firmadyneComm
sshpass -p password ssh -oKexAlgorithms=+diffie-hellman-group1-sha1 admin@192.168.0.100 'bash -s' < sshToFirmadyneCatProc.sh > output.txt
cat output.txt | python ../../modules/python/lineShorter.py | python ../../modules/python/pipeResultsSendToServer.py $1 "ListProc" ""
rm output.txt
echo "# [finisched]:  List proc (PROC)"


