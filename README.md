# Tezos Snapshot for Quicksync

## Overview

- This script downloads and import a latest snapshot for tezos mainnet/alphanet
- A snapshot is exported in every (other) month.
- Disk space - 10GB (Only for the import)
- It takes an hour to complete the snapshot import with SSD.
- This script assumes that your setting is default (e.g. data is located in ~/.tezos-node)
- Back-up of the folder '~/.tezos-node' is recommended, when needed

## How to Use

### 1. Move to the folder where tezos binaries exist

### 2. Run the one of the following commands based on the network

- 1. Mainnet

```
curl "https://gitlab.com/tezoskorea/tezos-snapshot/raw/master/quicksync.sh" | bash -s mainnet
```

- 2. Carthgenet

```
curl "https://gitlab.com/tezoskorea/tezos-snapshot/raw/master/quicksync.sh" | bash -s carthagenet
```
