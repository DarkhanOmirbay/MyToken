// SPDX-License-Identifier: MIT
pragma solidity ^0.8.23;

import "@openzeppelin/contracts/token/ERC20/ERC20.sol";
import "@openzeppelin/contracts/access/Ownable.sol";

contract AITUToken is ERC20, Ownable {
    
    constructor(address initialOwner) ERC20("AITU_DARKHAN", "AITU") Ownable(initialOwner) {
        _mint(msg.sender, 2000 * (10**decimals()));
    }

    function getLatestTransactionTimestamp() external view returns (uint256) {
        return block.timestamp;
    }

    function getTransactionSender() external view returns (address) {
        return msg.sender;
    }

    function getTransactionReceiver() external view returns (address) {
        return address(this); 
    }


    function mintTokens(address to, uint256 amount) external onlyOwner {
        _mint(to, amount);
    }
}
