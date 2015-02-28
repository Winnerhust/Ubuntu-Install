#Ubunbut Install Shell
#Load install shell script
#本段可能需要手动执行
#wget https://github.com/Winnerhust/Ubuntu-Install/blob/master/install.sh
#grep td install.sh |sed -e 's/<[^>]*>//g' >real_install.sh
#move real_install.sh install.sh

# change sources
#本段可能需要手动执行
wget https://github.com/Winnerhust/Ubuntu-Install/blob/master/sources.list #html file
echo "#163" >real_sources.list
egrep "deb( |-)" sources.list |sed -e 's/<[^>]*>//g' >>real_sources.list
sudo cp  /etc/apt/sources.list /etc/apt/sources.list.old #back up
sudo cp  real_sources.list /etc/apt/sources.list

sudo apt-get update

# install ssh 
sudo apt-get install openssh-server
/etc/init.d/ssh restart

#  install useful app
sudo apt-get install g++
sudo apt-get install flex
sudo apt-get install bison

sudo apt-get install subversion
sudo apt-get install gdb
sudo apt-get install vim
sudo apt-get install valgrind
sudo apt-get install make

sudo apt-get install zip
sudo apt-get install libmysqlclient-dev 

sudo apt-get install openjdk-7-jdk
sudo apt-get install openjdk-7-jre

#wget http://mirror.bit.edu.cn/apache/zookeeper/zookeeper-3.4.6/zookeeper-3.4.6.tar.gz
#tar -xvf zookeeper-3.4.6.tar.gz 
#cd zookeeper-3.4.6/conf
#cp zoo_sample.cfg zoo.cfg
#cd

#wget http://mirror.bit.edu.cn/apache/hbase/stable/hbase-0.98.8-hadoop2-bin.tar.gz
#tar -xvf hbase-0.98.8-hadoop2-bin.tar.gz 

