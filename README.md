# Raffle Smart Contract Project

Welcome to the Raffle project! This repository contains a decentralized raffle system built with Solidity and Chainlink VRF, designed for transparency and fairness on the Ethereum blockchain.

## Overview

The Raffle contract allows users to enter a lottery by paying an entrance fee. After a set interval, a random winner is selected using Chainlink's Verifiable Random Function (VRF), ensuring unbiased results.

## Features

- Decentralized lottery system
- Secure randomness via Chainlink VRF
- Configurable entrance fee and interval
- Event logging for entries
- Custom error handling for insufficient payments
- Immutable contract parameters for security

## How It Works

1. Users call `enterRaffle()` and pay the entrance fee.
2. Entrants are stored in an array until the interval elapses.
3. The contract owner or an external trigger calls `pickWinner()`.
4. Chainlink VRF provides a random number to select the winner.
5. The winner receives the accumulated ETH.

## Technologies Used

- Solidity ^0.8.18
- Chainlink VRF v2 Plus
- Foundry for development and testing

## Getting Started

1. Clone the repository.
2. Install Foundry and dependencies.
3. Deploy the contract to Sepolia or another testnet.
4. Fund your contract with LINK and ETH for VRF requests.

## Security Considerations

Randomness is sourced externally to prevent manipulation. All critical functions are protected against reentrancy and invalid calls.

## License

This project is licensed under MIT. See LICENSE for details.
