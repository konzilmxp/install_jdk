#!/bin/bash
echo `ls`
echo "please input jdk name"
read jdk_name
tar -zxvf $jdk_name
echo `ls`
read jdk_dir
home=`pwd`
echo $home
cd ~
read -p "当前用户是否为管理账号：（y/n）" user
if [ $user == "y" ] 
then
  echo "JAVA_HOME=${home}" >> /etc/profile
  echo "PATH=\$PATH:\$JAVA_HOME/bin" >> /etc/profile
  source /etc/profile
else
  echo "JAVA_HOME=${home}" >> .bash_profile 
  echo "PATH=\$PATH:\$JAVA_HOME/bin" >> .bash_profile
  source .bash_profile
  echo "java的版本为："
  java -version
fi
exit 0
