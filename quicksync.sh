TARGET="carthagenet_200723_588768_NMUphMq"

echo ================================
echo Downloading a snapshot file
echo ================================

wget -c -O ${TARGET}.tar.gz https://gitlab.com/tezoskorea/tezos-snapshot/raw/master/${TARGET}.tar.gz

rm -rf ~/tezos-carthagenet/context
rm -rf ~/tezos-carthagenet/store
rm -rf ~/tezos-carthagenet/lock

echo ================================
echo Extracting the snapshot file
echo ================================
tar -zxvf ${TARGET}.tar.gz

echo ================================
echo Importing the snapshot file
echo ${TARGET}
echo ================================
SNAP_DIR=$(pwd)
cd ~/tezos
NODE='tezos-node'
if [ -e "$NODE" ];
then
  ./tezos-node snapshot import ${SNAP_DIR}/${TARGET}
else
  tezos-node snapshot import ${SNAP_DIR}/${TARGET}
fi

cd ~/.tezos-node
IDENTITY='identity.json'
if [ -e "$IDENTITY" ];
then
  cd ~/tezos
  echo "======== You have the node identity! ========="
else
  cd ~/tezos
  ./tezos-node identity generate
fi

rm ${SNAP_DIR}/${TARGET}

