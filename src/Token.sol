
// pragma solidity ^0.8.13;

// contract Counter {
//     uint256 public number;

//     function setNumber(uint256 newNumber) public {
//         number = newNumber;
//     }

//     function increment() public {
//         number++;
//     }
// }


// SPDX-License-Identifier: MIT

pragma solidity ^0.8.13;

import '@openzeppelin/contracts/token/ERC20/ERC20.sol';
contract Tokens is ERC20 {

    mapping(address => uint) public knowBalance;

    constructor(string memory _name, string memory _symbol) ERC20(_name, _symbol) {
        _mint(msg.sender, 10 * 10**18);
    }



    function knowBalanceOf() public view returns(uint){
        return knowBalance[msg.sender];
    }
} 