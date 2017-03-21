#!/bin/bash
# ************************************************************
# Program: Django Installation Script with Impyla & MySQLdb
# Developer: Pratik Patil
# Date: 16-04-2015
# Last Updated: 28-04-2015
# ************************************************************
git clone https://github.com/sebastianese/DjangoInstall.git;

#if [ "`lsb_release -is`" == "Ubuntu" ] || [ "`lsb_release -is`" == "Debian" ]
#then
#    sudo apt-get -y install python python-pip python-setuptools python-django;
#    sudo apt-get -y build-dep python-mysqldb;
#    sudo apt-get -y install python-mysqldb python-dev git-core;


#elif [ "`lsb_release -is`" == "CentOS" ] || [ "`lsb_release -is`" == "RedHat" ]
#then
#    sudo wget http://mirrors.nl.eu.kernel.org/fedora-epel/6/i386/epel-release-6-8.noarch.rpm
#    sudo rpm -Uvh epel-release-6-8.noarch.rpm;
#    sudo rm -f epel-release-6-8.noarch.rpm;
    sudo yum -y install epel-release python3 Django MySQL-python git;

#else
#    echo "Unsupported Operating System";
#fi

# For Python-Impala Driver i.e. Impyla
git clone https://github.com/cloudera/impyla.git;
sudo python impyla/setup.py install;

mkdir $HOME/djangogirls
python3 -m venv /$HOME/myvenv
source $HOME/myvenv/bin/activate


