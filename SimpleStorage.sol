// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract SimpleStorage {
    uint256 private favouriteNumber;
    
    event NumberStored(uint256 newNumber);
    event NumberIncremented(uint256 newNumber);
    event NumberDecremented(uint256 newNumber);

    function store(uint256 _favNum) public {
        favouriteNumber = _favNum;
        emit NumberStored(_favNum);
    }

    function getFavoriteNumber() public view returns (uint256) {
        return favouriteNumber;
    }

    function increment() public {
        require(favouriteNumber < type(uint256).max, "Maximum value reached");
        favouriteNumber++;
        emit NumberIncremented(favouriteNumber);
    }

    function decrement() public {
        require(favouriteNumber > 0, "Number cannot be negative");
        favouriteNumber--;
        emit NumberDecremented(favouriteNumber);
    }

    function reset() public {
        favouriteNumber = 0;
        emit NumberStored(0);
    }
}
