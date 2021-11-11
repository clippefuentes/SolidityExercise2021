pragma solidity >=0.7.0 < 0.9.0;

contract learn2 {
    uint [] public numberList = [1,2,3,4,5];

    function validate(uint a) public view returns (bool) {
        if (a == 1) {
            return true;
        } else {
            return false;
        }
    }
    function loopFunc() public view returns(uint) {
        uint sum = 0;
        for(uint i=0; i < 5; i++) {
            sum += numberList[i];
        }
        return sum;
    }
}