#!/bin/bash -e

# install python prereqs
add-apt-repository -y ppa:fkrull/deadsnakes
apt-get update
apt-get install -y libxml2 libxml2-dev libxslt1.1 libxslt1-dev libffi-dev libssl-dev libpq-dev libmysqlclient-dev

for file in /u12pytall/version/*;
do
  . $file
done

apt-get clean
apt-get autoclean
apt-get autoremove
