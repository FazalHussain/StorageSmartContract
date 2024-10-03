Enhanced Storage Smart Contract

This repository contains an enhanced version of a basic Storage Smart Contract written in Solidity. It demonstrates additional functionality such as storing a list of people, each with a favorite number and a corresponding mapping between names and favorite numbers. The contract allows users to store and retrieve values on the Ethereum blockchain, as well as to maintain and query a list of people.

Features

	•	Store a Number: Allows users to store a uint256 number in the contract’s storage.
	•	Retrieve the Stored Number: Provides a function to retrieve the most recently stored number.
	•	Add People: Users can add a person to the contract’s list of people, each identified by a name and their favorite number.
	•	Mapping: A mapping between a person’s name (as a string) and their favorite number (as a uint256) is maintained, allowing for quick lookups.

Technology Stack

	•	Solidity: The contract is written in Solidity, a high-level language for implementing smart contracts on Ethereum.
	•	Remix IDE: This contract can be deployed and tested using Remix IDE, an online Ethereum IDE for writing smart contracts.

Contract Overview

The contract provides several key functions:

	1.	store(uint256 _number): Stores an unsigned integer in the contract’s storage.
	2.	retrieve(): Returns the last stored unsigned integer.
	3.	addPerson(string _name, uint256 _favNumber): Adds a new person with their name and favorite number to a list and updates the mapping.
	4.	nameToFavNumber: A public mapping that returns a person’s favorite number when queried by their name.
