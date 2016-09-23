#!/bin/sh

#SNAPPYVM=../snappy-vm
#SNAPSRC=`pwd`
#SNAPNAME=node-red_1.0_amd64.snap
sudo apt update
sudo apt -y install g++ make python libbluetooth-dev libudev-dev
#cd $SNAPSRC
snapcraft clean
# bug in prime for nodejs plugin remove section when fixed
snapcraft prime
cp -R stage/lib/node_modules prime/lib/node_modules
# end bug workaround
snapcraft snap

#cd $SNAPPYVM
#scp  -P 2222 -i .vagrant/machines/default/virtualbox/private_key  $SNAPSRC/$SNAPNAME ubuntu@127.0.0.1:~/
#vagrant ssh -c "sudo snappy install $SNAPNAME --allow-unauthenticated"

#snappy-remote --pub-key=/home/l/git/create-net/agile/snappy-vm/.vagrant/machines/default/virtualbox/private_key --url=ubuntu@127.0.0.1:2222 install $SNAPSRC/*.snap
