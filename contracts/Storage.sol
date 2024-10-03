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

    function store(uint256 _number) public  {
        number = _number;
    }

    function retrive() public view returns(uint256) {
        return number;
    }

    function addPerson(string memory _name, uint256 _favNumber) public  {
        people.push(People(_favNumber, _name));
        nameToFavNumber[_name] = _favNumber;
    }
}
