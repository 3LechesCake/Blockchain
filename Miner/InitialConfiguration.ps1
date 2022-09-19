## The following script is to install and configure a node for Tres Leches Blockchain, this way you will be able to earn as miner and help us speed the node verification for our transactions.

## Let's creaate a folder for the miner
mkdir TresLeches >> setup.log
cd TresLeches >> setup.log
mkdir ExternalMiner >> setup.log
cd ExternalMiner >> setup.log
cp ../../treslechesmainnet.json ./ >> setup.log 
geth init --datadir data treslechesmainnet.json >> setup.log
## Setup Completed now launching node. 
geth --networkid 6066 --datadir data --identity "External Miner" --bootnodes enode://c8b59a5915b0df7f1bdaea6bd2f7c4e8056f3393f8198acdc09b80ab46f9b9913d1f28452c3da8a8d9c93983278ff546f22a9d7222c12b2200c9503f7144f4a8@147.182.143.50:0?discport=30301 --port 30305 --miner.threads 1 --miner.etherbase=0x4f00aa38162c6f24c505c9374c7b6b4631186066 --ipcdisable --syncmode full --miner.etherbase 0xe6D74C742698D26511504FBA2261a6097d556066 console >> setup.log