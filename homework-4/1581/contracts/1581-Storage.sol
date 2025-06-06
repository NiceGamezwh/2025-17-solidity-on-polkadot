// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

contract Storage {
    uint256 private number;
    event NumberUpdated(uint256 newNumber);

    function store(uint256 _number) public {
        number = _number;
        emit NumberUpdated(_number);
    }

    function retrieve() public view returns (uint256) {
        return number;
    }
}