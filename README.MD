# Enhanced Storage Smart Contract

This repository contains an enhanced version of a basic **Storage Smart Contract** written in Solidity. It demonstrates additional functionality such as storing a list of people, each with a favorite number and a corresponding mapping between names and favorite numbers. The contract allows users to store and retrieve values on the Ethereum blockchain, as well as to maintain and query a list of people.

## Features

- **Store a Number**: Allows users to store a `uint256` number in the contract's storage.
- **Retrieve the Stored Number**: Provides a function to retrieve the most recently stored number.
- **Add People**: Users can add a person to the contract's list of people, each identified by a name and their favorite number.
- **Mapping**: A mapping between a person's name (as a `string`) and their favorite number (as a `uint256`) is maintained, allowing for quick lookups.

## Technology Stack
- **Solidity**: The contract is written in Solidity, a high-level language for implementing smart contracts on Ethereum.
- **Remix IDE**: This contract can be deployed and tested using Remix IDE, an online Ethereum IDE for writing smart contracts.

## Contract Overview

The contract provides several key functions:
1. **store(uint256 _number)**: Stores an unsigned integer in the contract’s storage.
2. **retrieve()**: Returns the last stored unsigned integer.
3. **addPerson(string _name, uint256 _favNumber)**: Adds a new person with their name and favorite number to a list and updates the mapping.
4. **nameToFavNumber**: A public mapping that returns a person's favorite number when queried by their name.

## Smart Contract Code

```solidity
// SPDX-License-Identifier: MIT
pragma solidity ^0.8.19;

contract Storage {
    uint256 number;

    struct People {
        uint256 favNumber;
        string name;
    }

    People[] public people;

    mapping(string => uint256) public nameToFavNumber;

    // Store a number in the contract
    function store(uint256 _number) public {
        number = _number;
    }

    // Retrieve the stored number
    function retrieve() public view returns (uint256) {
        return number;
    }

    // Add a person and their favorite number to the list
    function addPerson(string memory _name, uint256 _favNumber) public {
        people.push(People(_favNumber, _name));
        nameToFavNumber[_name] = _favNumber;
    }
}```

## How to Use

### 1. Deploying:

	•	Open the contract in Remix IDE.
	•	Compile the contract using Solidity version 0.8.19 or later.
	•	Deploy the contract to a local blockchain or any Ethereum test network like Ropsten or Rinkeby.

### 2. Interacting:

	•	Use the store() function to store an unsigned integer.
	•	Use the retrieve() function to fetch the stored number.
	•	Use addPerson() to add a person’s name and favorite number to the list.
	•	Query the nameToFavNumber mapping to retrieve a person’s favorite number using their name.

### Prerequisites

	•	Solidity 0.8.19 or later.
	•	Remix IDE for compiling and deploying the contract.
	•	Optional: MetaMask or another wallet for interacting with the contract on live networks.

### License

This project is licensed under the MIT License. You are free to use, modify, and distribute the code.
