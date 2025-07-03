#!/bin/bash

echo "1nstaMart Setup"
sleep 1
BLUE='\033[1;34m'
RED='\033[0;31m'
NC='\033[0m' # No Color
printf "\r\nProvided by the awesome ${BLUE}knulii${NC}\r\n"

BASE_DIR="$(cd "$(dirname "$0")" && pwd)"

echo -n "Enter the special code or any other key to continue "
echo "."
echo "php 7.2 master = 1"
echo "php 7.2 v3.0 with modules = 2"
echo "php 8.1 branch 3.1 = 3"
echo "php 8.1 branch 3.x = 4"
echo "YM = 5"
read number

if ! [[ "$number" =~ ^[1-5]$ ]]; then
    echo "Invalid option"
    exit 1
fi

if [ $number -eq 1 ]
then
chmod 777 ${BASE_DIR}/scripts/finish/7fini.sh
mv ${BASE_DIR}/scripts/finish/7fini.sh ${BASE_DIR}/fini.sh
cd scripts
chmod -R uga+rwx master.sh
./master.sh

elif [ $number -eq 2 ]
then
chmod 777 ${BASE_DIR}/scripts/finish/7mfinish.sh
mv ${BASE_DIR}/scripts/finish/7mfinish.sh ${BASE_DIR}/fini.sh
cd scripts
chmod -R uga+rwx v3m.sh
./v3m.sh

elif [ $number -eq 3 ]
then
chmod 777 ${BASE_DIR}/scripts/finish/finish81-1.sh
mv ${BASE_DIR}/scripts/finish/finish81-1.sh ${BASE_DIR}/fini.sh
cd scripts
chmod -R uga+rwx php8v31.sh
./php8v31.sh

elif [ $number -eq 4 ]
then
chmod 777 ${BASE_DIR}/scripts/finish/finish81-3.sh
mv ${BASE_DIR}/scripts/finish/finish81-3.sh ${BASE_DIR}/fini.sh
cd scripts
chmod -R uga+rwx 83.sh
./83.sh

elif [ $number -eq 5 ]
then
chmod 777 ${BASE_DIR}/scripts/finish/YMfini.sh
mv ${BASE_DIR}/scripts/finish/YMfini.sh ${BASE_DIR}/fini.sh
cd scripts
chmod -R uga+rwx v3m.sh
./v3m.sh

else
echo "Try again ;)"
fi
