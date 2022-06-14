#!/bin/bash
curl -sL https://rpm.nodesource.com/setup_10.x | sudo bash -
sudo yum install nodejs -y 

yum install git -y 
git clone https://github.com/ChaitanyaChandra/spec.git
cd spec/
npm  install
node index.js > node.logs 2>&1 &
ps -ef | grep "index.js" > run.log