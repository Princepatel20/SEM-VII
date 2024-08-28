// SPDX-License-Identifier: MIT
pragma solidity ^0.8.17;

contract PrinceGondaliya5 {
    uint public prince_1;
    uint public prince_2;
    uint public prince_3;

    // Constructor to initialize the state variables
    constructor() {
        prince_1 = 0;
        prince_2 = 0;
        prince_3 = 0;
    }

    // Function to set values for the state variables
    function prince_set_values(uint _value1, uint _value2, uint _value3) public {
        prince_1 = _value1;
        prince_2 = _value2;
        prince_3 = _value3;
    }

    // Function to demonstrate if-else conditional statements
    function prince_if_test() public view returns (uint) {
        uint result;

        // If-Else If-Else statement
        if (prince_1 == 1) {
            result = 1;
        } else if (prince_2 == 2) {
            result = 2;
        } else if (prince_3 == 3) {
            result = 3;
        } else {
            result = 0;
        }

        return result;
    }

    // Function to demonstrate nested if statements
    function prince_nested_if_test() public view returns (uint) {
        uint result;

        if (prince_1 == 1) {
            result = 1;
            if (prince_2 == 2) {
                result = 2;
                if (prince_3 == 3) {
                    result = 3;
                }
            }
        } else {
            result = 0;
        }

        return result;
    }

    // Function to demonstrate ternary operator for if-else
    function prince_ternary_test() public view returns (uint) {
        // Ternary operator for If-Else If-Else
        return prince_1 == 1 ? 1 : (prince_2 == 2 ? 2 : (prince_3 == 3 ? 3 : 0));
    }

    // Function to demonstrate ternary operator for nested if
    function prince_nested_ternary_test() public view returns (uint) {
        // Ternary operator for nested if
        return prince_1 == 1 ? (prince_2 == 2 ? (prince_3 == 3 ? 3 : 2) : 1) : 0;
    }
}
