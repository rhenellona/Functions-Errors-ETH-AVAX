// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract SimpleMath {
    function multiply(uint256 a, uint256 b) external pure returns (uint256) {
        uint256 result = a * b;
        require(result > 50, "Result of multiplication must be greater than 50");
        return result;
    }

     function divide(uint256 a, uint256 b) external pure returns (uint256) {
        require(b != 0, "Cannot divide by zero");
        uint256 result = a / b;
        require(result > 10, "Result must be greater than 10");
        return result;
    }

    function subtract(uint256 a, uint256 b, uint256 c) external pure returns (uint256) {
            uint256 result = a - b - c;
            require(result < 50, "Result must be less than 50");
            return a - b - c;
    }
    
     function add(uint256 a, uint256 b) external pure returns (uint256) {
        uint256 result = a + b;
        assert(result >= a && result >= b); 
        return result;
     }
}
