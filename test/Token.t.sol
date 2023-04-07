// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.13;

import "forge-std/Test.sol";
import "../src/Token.sol";

contract TokenTest is Test {
    
    string public _name;
    string public  _symbol;
    Token public token;
    function setUp() public {
        _name = "ExampleToken";
        _symbol = "EXT";
        token = new Token(_name, _symbol);
    }

    function testDeployment() public {
        uint bal = token.knowBalanceOf();
        if(bal > 0){
            bool val = true;
        }
        assertTrue(val);
    }
}
