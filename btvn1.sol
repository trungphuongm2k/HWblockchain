// SPDX-License-Identifier: MIT
pragma solidity >=0.6.12 <0.9.0;

contract HelloWorld {
    /**
     * @dev Ex1
     */
    bool public b = true;
    uint256 public x;

    function get_b() public view returns (bool) {
        return b;
    }

    /**
     * @dev Ex2
     */

    function addToX22(uint256 y) public {
        x += y;
    }

    /**
     * @dev Ex3
     */
    modifier checkConditionInput(uint256 y) {
        require(y > 0, "X just must be increased!");
        x += y;
        _;
    }

    function increaseX(uint256 y) public checkConditionInput(y) {}

    function returnTwo() public pure returns (int256 a, bool p) {
        a = -2;
        p = true;
    }
}
