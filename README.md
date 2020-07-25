# Tezos Snapshot for Quicksync

## Overview

- This script downloads and import a latest snapshot for tezos **CARTHAGENET ONLY**
- A snapshot is exported in every (other) month.
- Disk space about 30GB (Only for the import)
- It takes an hour to complete the snapshot import with SSD.
- This script assumes that your setting is default (e.g. data is located in ~/.tezos-node)
- Back-up of the folder '~/.tezos-node' is recommended, when needed

## How to Use

### 1. Move to the folder where tezos binaries exist

### 2. Run the following command (**CARTHAGENET ONLY**)

```
curl "https://raw.githubusercontent.com/mcwithimp/tezos-snapshot/master/tz_install.sh" | bash
```
