// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import "./DataStore1.sol";

contract DataStore2 is DataStore1 {

    // Override fungsi doSomething
    function doSomething(uint256 _data) public override {
        data = 10 + _data;
    }
    
    // Fungsi untuk membaca data dari DataStore1
    function readData() public view returns (uint256) {
        return data;
    }
}
