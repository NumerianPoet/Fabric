// SPDX-License-Identifier: MIT
// Compatible with OpenZeppelin Contracts ^5.0.0
pragma solidity ^0.8.20;

import "@openzeppelin/contracts@5.0.2/token/ERC20/ERC20.sol";
import "@openzeppelin/contracts@5.0.2/token/ERC20/extensions/ERC20Burnable.sol";
import "@openzeppelin/contracts@5.0.2/token/ERC20/extensions/ERC20Permit.sol";

contract Fabric is ERC20, ERC20Burnable, ERC20Permit {
    constructor() ERC20("Fabric", "FBRC") ERC20Permit("Fabric") {
        _mint(msg.sender, 1000000000 * 10 ** 18); // Mint 1,000,000,000 tokens with 18 decimal places
    }
}