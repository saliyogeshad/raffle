// SPDX-License-Identifier: MIT
pragma solidity ^0.8.18;

/**
 * @title Raffle
 * @author Sali Yogesh
 * @notice This contract implements a simple raffle system
 * @dev implements chainlink VRF
 */
contract Raffle {
    uint256 private immutable i_entranceFee;
    address payable[] private s_players;

    /** Events */
    event RaffleEntered(address indexed player);

    /** Errors */
    error Raffle__SendMoreToEnterRaffle();

    constructor(uint256 entranceFee) {
        i_entranceFee = entranceFee;
    }

    function enterRaffle() public payable {
        if (msg.value < i_entranceFee) {
            revert Raffle__SendMoreToEnterRaffle();
        }
        s_players.push(payable(msg.sender));
        emit RaffleEntered(msg.sender);
    }

    function pickWinner() public {}

    /** Getter Functions */

    function getEntranceFee() external view returns (uint256) {
        return i_entranceFee;
    }
}
