## Functionalities to add
1. Users can enter by paying for a ticket 
    1. The ticket fees are going to go to the winner at the time of draw
2. After X period of time, the lottery the lottery will automatically draw a winner when the time is up
    1. programmatically
3. Using chainlink VRF and Chainlink Automation
    1. Chainlink VRF -> randomness
    2. Chainlink Automation -> Time based Trigger

## Tests!

1. Write some deploy scripts
2. Write our tests
    1. Work on a local chains
    2. Forked Testnet
    3. Forked Mainnet
    

## Foundry

**Foundry is a blazing fast, portable and modular toolkit for Ethereum application development written in Rust.**

Foundry consists of:

-   **Forge**: Ethereum testing framework (like Truffle, Hardhat and DappTools).
-   **Cast**: Swiss army knife for interacting with EVM smart contracts, sending transactions and getting chain data.
-   **Anvil**: Local Ethereum node, akin to Ganache, Hardhat Network.
-   **Chisel**: Fast, utilitarian, and verbose solidity REPL.

## Documentation

https://book.getfoundry.sh/

## Usage

### Build

```shell
$ forge build
```

### Test

```shell
$ forge test
```

### Format

```shell
$ forge fmt
```

### Gas Snapshots

```shell
$ forge snapshot
```

### Anvil

```shell
$ anvil
```

### Deploy

```shell
$ forge script script/Counter.s.sol:CounterScript --rpc-url <your_rpc_url> --private-key <your_private_key>
```

### Cast

```shell
$ cast <subcommand>
```

### Help

```shell
$ forge --help
$ anvil --help
$ cast --help
```
