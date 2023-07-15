// SPDX-License-Identifier: MIT
pragma solidity 0.8.18;

contract MyToken {
    string public tokenName;
    string public tokenAbbrv;
    uint public totalSupply;

    mapping(address => uint) public balances;//if we require we can do it as uint balance = balances[address];

    constructor(string memory TokenName, string memory TokenAbbrv, uint TotalSupply) {
        tokenName = TokenName;
        tokenAbbrv = TokenAbbrv;
        totalSupply = TotalSupply;
        balances[msg.sender] = TotalSupply;
    }

    function mint(address, uint value) public {
        totalSupply += value;//0x1234567890123456789012345678901234567890 address for reference 
        balances[msg.sender] += value;
    }

    function burn(uint value) public {
        require(balances[msg.sender] >= value, "Insufficient balance");

        totalSupply -= value;
        balances[msg.sender] -= value;
    }
}
