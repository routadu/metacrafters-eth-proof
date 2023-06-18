// SPDX-License-Identifier: MIT

pragma solidity 0.8.18;

contract Database{

    mapping(address => string) public identityRecord;

    function addRecord(address add, string memory name)public{
        identityRecord[add] = name;
    }
}