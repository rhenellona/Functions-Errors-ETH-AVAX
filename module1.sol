// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract SmartContractProject {
    uint256 public data;

    function setData(uint256 _data) public {

        require(_data != 0, "Data cannot be zero");

        assert(_data != data);
        if (_data < data) {
            revert("New data must be greater than current data");
        }

        data = _data;
    }
}
