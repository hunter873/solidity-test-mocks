// SPDX-License-Identifier: MIT
pragma solidity ^0.8.26;

contract MockOracleFeed {
    int256 public mockPrice = 250000000000;
    uint8 public constant decimals = 8;
    uint256 public roundId = 1;

    event MockRoundUpdated(uint256 indexed round, int256 answer);

    function setMockRoundPrice(int256 _newPrice) external {
        roundId += 1;
        mockPrice = _newPrice;
        emit MockRoundUpdated(roundId, _newPrice);
    }
}
