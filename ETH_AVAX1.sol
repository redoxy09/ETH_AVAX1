// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;
contract EvenNumberArray {
    uint[] evenNumbers;
    function addEvenNumber(uint number) public {
        require(number % 2 == 0, "Only even numbers are allowed");
        uint lengthBefore = evenNumbers.length;
        evenNumbers.push(number);
        assert(evenNumbers.length == lengthBefore + 1);
    }
    function triggerRevert() public pure {
        revert("This is a manual revert");
    }
    function getEvenNumbers() public view returns (uint[] memory) {
        return evenNumbers;
    }
}
