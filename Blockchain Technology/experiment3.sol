///To write, deploy, and execute a smart contract that consists of state variables, local variables, constructor and public/external function in Solidity.

// SPDX-License-Identifier: MIT
pragma solidity ^0.8.18;
contract PrinceGondaliya3 {
    string public prince_name;
    uint public prince_age;
    bool public prince_isStudent;
    constructor() {
        prince_name = "Prince";
        prince_age = 21;
        prince_isStudent = true;
    }
    function setDetails_external(string memory _name, uint _age, bool _isStudent) external {
        prince_name = _name;
        prince_age = _age;
        prince_isStudent = _isStudent;
    }
    function setDetails_public(string memory _name, uint _age, bool _isStudent) public {
        prince_name = _name;
        prince_age = _age;
        prince_isStudent = _isStudent;
    }
}
