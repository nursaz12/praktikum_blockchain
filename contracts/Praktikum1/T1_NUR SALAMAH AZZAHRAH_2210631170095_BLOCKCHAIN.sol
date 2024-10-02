// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract DataStore {

    struct Person {
        string name; 
        string alamat;  
        string tanggallahir;  
        string jeniskelamin;  
    }

    Person[] public person;

    function storeData(
        string memory _name, 
        string memory _alamat, 
        string memory _tanggallahir, 
        string memory _jeniskelamin
    ) public {
        person.push(Person(_name, _alamat, _tanggallahir, _jeniskelamin));
    }

    function getPersonCount() public view returns (uint) {
        return person.length; 
    }

    function getPerson(uint index) public view returns (string memory, string memory, string memory, string memory)
    {
        require(index < person.length, "Index di luar batas");
        Person memory p = person[index];
        return(p.name, p.alamat, p.tanggallahir, p.jeniskelamin);
    }
}