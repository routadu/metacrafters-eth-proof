// SPDX-License-Identifier: MIT

pragma solidity 0.8.18;

contract CarCollection{
    struct Car {
        address owner;
        address brand;
        string model;
        uint year;
        uint price;
    }

    Car[] collection;

    function examples() public {

        // struct initialized with default values
        Car memory genericCar;
        collection.push(genericCar);

        // initialize struct with positional parameters
        // order of parameter needs to be maintained
        Car memory car1 = Car(msg.sender,address(0x00),"Prius",2015,500000);
        collection.push(car1);

        // initialize struct with key value pairs
        // order of key value pairs doesn't matter
        Car memory car2 = Car({
            price:1000000,
            model:"City",
            brand:address(0x00),
            owner:msg.sender,
            year:2023});
        
        // delete (reset) struct member
        delete car2.owner;

        // delete (reset) struct
        delete car2;

        collection.push(car2);

        // initializing struct with memory creates a copy of struct in function memory
        // gets deleted after function execution ends
        Car memory carFromCollection = collection[1];

        // initializing struct with storage maintains a reference of the struct object
        // with the array element. Any update made here also updates the object in the
        // array element.
        Car storage carFromCollection2 = collection[1];

        delete carFromCollection;

        carFromCollection2.price+=10000;
    }

    function addCartoCollection(address brand, string memory model, uint year, uint price) public {
        Car memory newCar = Car(msg.sender,brand,model,year,price);
        collection.push(newCar);
    }

    function addGenericCar() public {
        Car memory newCar;
        collection.push(newCar);
    }   
}