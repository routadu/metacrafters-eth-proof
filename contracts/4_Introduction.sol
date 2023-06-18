// SPDX-License-Identifier: MIT
pragma solidity 0.8.18;

contract BankAccount{
    string private constant ACCOUNT_NO = "ASDE20083634";
    int64 private balance = 0;
    string private upiID = "solidity@oksbi";
    string private ifscCode = "SBIN0002065";
    int8 private accountRating = 5;

    function getAccountNo() pure public returns (string memory){
        return ACCOUNT_NO;
    }

    function  deposit(int32 amount) public{
        balance += amount;
    }

    function withdraw(int32 amount) public returns (int64){
        if(amount<balance){
            balance -= amount;
            return amount;
        }
        return 0;
    }

    function viewBalance() public view returns (int64){
        return balance;
    }

    function getUPIID() public view returns (string memory){
        return upiID;
    }

    function getIFSCCode() public view returns (string memory){
        return ifscCode;
    }

    function getAccountRating() public view returns (int8){
        return accountRating;
    }

    function setAccountRating(int8 rating) public{
        accountRating = rating;
    }
}