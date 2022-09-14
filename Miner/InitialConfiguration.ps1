## The following script is to install and configure a node for Tres Leches Blockchain, this way you will be able to earn as miner and help us speed the node verification for our transactions.

## Let's creaate a folder for the miner
mkdir TresLeches >> setup.log
cd TresLeches >> setup.log
mkdir ExternalMiner >> setup.log
cd ExternalMiner >> setup.log
cp ../../treslechesmainnet.json ./ >> setup.log 
geth init --datadir data treslechesmainnet.json >> setup.log
## Setup Completed now launching node. 
geth --networkid 6066 --datadir data --identity "External Miner" --bootnodes enode://151d2304eac33181bce5cb052082c269c35a3128c9cb1b6ce316c946ea9ea6ce5d558ea87e5729d4167b0e7556402d9b5eb7e8e8c95af025e8d7c3846aa53c5f@147.182.143.50:30304 --port 30305 --miner.threads 1 --miner.etherbase=0x4f00aa38162c6f24c505c9374c7b6b4631186066 --ipcdisable --syncmode full --miner.etherbase 0xe6D74C742698D26511504FBA2261a6097d556066 console >> setup.log