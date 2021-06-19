## Static Analyis Sample

Example for me to remember how to use [Slither](https://github.com/crytic/slither) to static analysing smart contract in Git

### Pre-requiste

1. Install [Slither](https://github.com/crytic/slither)
2. Install [Truffle](https://www.trufflesuite.com/)
3. Install [Yarn](https://yarnpkg.com/)

### Sample file

Coin with OpenZeppelin in contracts/MyCoin.sol

### Run

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