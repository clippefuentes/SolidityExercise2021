pragma solidity >=0.7.0 < 0.9.0;

contract learn1 {
    function add(uint a, uint b) public pure returns (uint) {
        return a + b;
    }
    function multiply(uint a, uint b) public pure returns (uint) {
        return a * b;
    }
    function subtract(uint a, uint b) public pure returns (uint) {
        return a - b;
    }

    uint public testA = 1;
    uint internal testB = 2;

    function privateFunc() private pure returns (uint) {
        return 4;
    }

    function externalFunc() external view returns (uint) {
        return testB;
    }

}