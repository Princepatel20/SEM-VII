///To write, deploy, and execute a smart contract that performs simple mathematical operations of three operands, and makes use of view functions in Solidity.

// SPDX-License-Identifier: MIT
pragma solidity ^0.8.17;

contract PrinceGondaliya4 {
    // State variables
    int256 public prince_operand1;
    int256 public prince_operand2;
    int256 public prince_operand3;

    // Constructor
    constructor() {
        prince_operand1 = 0;
        prince_operand2 = 0;
        prince_operand3 = 0;
    }

    // Function to add the three operands
    function prince_add_function() public view returns (int256) {
        int256 total = prince_operand1 + prince_operand2 + prince_operand3;
        return total;
    }

    // Function to subtract the three operands
    function prince_sub_function() public view returns (int256) {
        int256 total = prince_operand1 - prince_operand2 - prince_operand3;
        return total;
    }

    // Function to multiply the three operands
    function prince_mul_function() public view returns (int256) {
        int256 total = prince_operand1 * prince_operand2 * prince_operand3;
        return total;
    }

    // Function to divide the three operands
    function prince_div_function() public view returns (int256) {
        require(prince_operand2 != 0 && prince_operand3 != 0, "Cannot divide by zero");
        int256 total = (prince_operand1 / prince_operand2) / prince_operand3;
        return total;
    }

    // Function to set the values of the three operands
    function prince_set_operands(int256 a, int256 b, int256 c) public {
        prince_operand1 = a;
        prince_operand2 = b;
        prince_operand3 = c;
    }

    // Function to get the values of the three operands
    function prince_get_operands() public view returns (int256, int256, int256) {
        return (prince_operand1, prince_operand2, prince_operand3);
    }
}
