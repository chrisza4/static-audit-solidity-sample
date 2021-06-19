## Static Analyis Sample

Example for me to remember how to use [Slither](https://github.com/crytic/slither) to static analysing smart contract in Git

### Sample file

Coin with OpenZeppelin

### Runa

Install dependencies via Yarn

```
yarn
```

Run

```
sh flatten_and_audit.sh ./contracts/MyCoin.sol
```

This will print multiple audit report.

### Troubleshoot

1. Make sure solidity version is using [solc-select](https://github.com/crytic/solc-select). Slither does not read from Truffle AFAIK.