// SPDX-License-Identifier: MIT

pragma solidity 0.8.18;

contract ECommerce{

    // dynamic array
    string[] orders;
    int16[] numbers = [int16(1),2,3,4,5];

    // fixed size array
    string[5] addresses; 

    function example() public {

        // push element into a array
        numbers.push(10); // [1,2,3,4,5,10]

        // update value of element
        numbers[5] = 6; // [1,2,3,4,5,6]

        // delete an element (default value will override)
        delete numbers[3]; // [1,2,3,0,5,10]
        numbers.pop(); // [1,2,3,0,5]

        // create array in memory
        // cannot call push or pop
        uint[] memory arr = new uint[](5);

        // arr.length to get length
        for (uint8 i=0; i<arr.length; i++) 
        {
            arr[i] = i;
        }

    }

    function getOrders() public view returns (string[] memory){
        return orders;
    }

    function newOrder(string memory orderID) public {
        orders.push(orderID);
    }



}
