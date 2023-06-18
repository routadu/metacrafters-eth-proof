// SPDX-License-Identifier: MIT

pragma solidity 0.8.18;

contract LoopExamples{

    function sumOfNumbersNotDivisibleBy3(uint n) public pure returns (uint) {
        uint numSum=0;
        for(uint i=0;i<n;i++){
            if(i%3==0){
                continue;
            }
            numSum+=i;
        }
        return numSum;
    }

    function sumOfNumbersUntilSumIs1000(uint n) public pure returns (uint) {
        uint numSum=0;
        for(uint i=0;i<n;i++){
            if(numSum+i>1000){
                break;
            }
            numSum+=i;
        }
        return numSum;
    }

}