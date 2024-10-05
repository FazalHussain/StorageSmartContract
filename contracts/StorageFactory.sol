// SPDX-License-Identifier: MIT
pragma solidity ^0.8.19;

import "contracts/Storage.sol";

contract StorageFactory {

    Storage[] public  simpleStorageArray;

    function createSimpleStorage() public {
        Storage simpleStorage = new Storage();
        simpleStorageArray.push(simpleStorage);
    }

    function storeFromFactory(uint256 index, uint256 favNumber) public {
        Storage(address(simpleStorageArray[index])).store(favNumber);
    }

    function get(uint256 index) public  view returns(uint256) {
        return  Storage(address(simpleStorageArray[index])).retrive();
        
    }

}
 