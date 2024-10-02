// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract DataStore1 {
    uint256 data;

    // Fungsi untuk menyimpan data
    function storeData(uint256 _data) public {
        data = _data;
    }

    // Fungsi untuk melakukan sesuatu, bisa di-override nantinya
    function doSomething(uint256 _data) public virtual {
        data = _data;
    }

}
