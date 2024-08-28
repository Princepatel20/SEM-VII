///To write, deploy, and execute a smart contract that performs for and while loops in solidity

// SPDX-License-Identifier: MIT
pragma solidity ^0.8.17;

contract PrinceGondaliya6 {
    uint256 public prince_sum_for;
    uint256 public prince_sum_while;

    // Constructor to initialize state variables
    constructor() {
        prince_sum_for = 0;
        prince_sum_while = 0;
    }

    // Pure function to calculate sum using for loop
    // Private because it's an internal helper function
    function prince_for_loop(uint _number) pure private returns (uint) {
        uint local_sum = 0;
        for (uint i = 0; i <= _number; i++) {
            local_sum = local_sum + i;
        }
        return local_sum;
    }

    // Pure function to calculate sum using while loop
    // Private because it's an internal helper function
    function prince_while_loop(uint _number) pure private returns (uint) {
        uint local_sum = 0;
        uint i = 0;
        while (i <= _number) {
            local_sum = local_sum + i;
            i++;
        }
        return local_sum;
    }

    // External function to calculate sums using both loops
    function prince_sum_of_number(uint number_input) external {
        prince_sum_for = prince_for_loop(number_input);
        prince_sum_while = prince_while_loop(number_input);
    }

    // Public view function to get the calculated sums
    function prince_get_sum() view public returns (uint, uint) {
        return (prince_sum_for, prince_sum_while);
    }
}
