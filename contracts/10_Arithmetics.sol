// SPDX-License-Identifier: MIT

pragma solidity 0.8.18;

contract ArithmeticOperations{

    function add(int a, int b) external pure returns (int){
        return a+b;
    }

    function subtract(int a, int b) external pure returns (int){
        return a-b;
    }

    function multiply(int a, int b) external pure returns (int){
        return a*b;
    }

    function divide(int a, int b) external pure returns (int){
        return a/b;
    }

}