// SPDX-License-Identifier: MIT

pragma solidity 0.8.18;

contract FunctionsExample{

    uint var1 = 19;
    uint var2 = 27;

    // function name(paramters) access_type function_type returns (return_type){
    //  statements;
    // }

    // pure function
    // doesn't read state variables
    function getProduct() public pure returns (uint){
        uint a = 10;
        uint b = 20;
        return a*b;
    }

    // view function
    // reads the state variables but doesn't modify it
    function getProductFromVariable() public view returns (uint){
        return var1*var2;
    }


}