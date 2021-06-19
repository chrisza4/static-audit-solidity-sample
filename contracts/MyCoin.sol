// SPDX-License-Identifier: GPL-3.0
pragma solidity ^0.7.0;

import "@openzeppelin/contracts/token/ERC20/ERC20.sol";
import "@openzeppelin/contracts/access/Ownable.sol";
import "@openzeppelin/contracts/math/SafeMath.sol";

contract Leaf is ERC20, Ownable {
    using SafeMath for uint256;

    uint256 constant LIMIT_TOTAL_SUPPLY = 2E26;

    constructor(uint256 initialSupply) ERC20("Leaf", "LEAF") {
        require(
            initialSupply <= LIMIT_TOTAL_SUPPLY,
            "Cannot mint more than limit"
        );

        _mint(msg.sender, initialSupply);
    }

    function mint(address account, uint256 amount) external onlyOwner {
        require(
            totalSupply().add(amount) <= LIMIT_TOTAL_SUPPLY,
            "Cannot more than limit"
        );

        _mint(account, amount);
    }

    function burn(uint256 amount) external {
        _burn(msg.sender, amount);
    }
}
