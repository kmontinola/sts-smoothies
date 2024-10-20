// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract UniqueList {
    // Array to store the items
    address[] public items;
    
    // Mapping to check if an item exists
    mapping(address => bool) public itemExists;

    // Function to add a unique item
    function addItem(address newItem) public {
        // Check if the item doesn't already exist
        if (!itemExists[newItem]) {
            items.push(newItem);
            itemExists[newItem] = true;
        }
    }

    // Function to get the number of items
    function getItemCount() public view returns (uint) {
        return items.length;
    }
}
