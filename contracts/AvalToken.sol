// SPDX-License-Identifier: MIT
pragma solidity ^0.8.17;

import "@openzeppelin/contracts/access/Ownable.sol";
import "@openzeppelin/contracts/token/ERC20/ERC20.sol";

contract AvalToken is ERC20, Ownable {


    constructor(string memory tokenName, string memory tokenSymbol)
        ERC20(tokenName, tokenSymbol)
        Ownable(msg.sender)
    {}

    function transfer(address to, uint256 value)
        public
        override
        returns (bool)
    {
        address owner = _msgSender();
        _transfer(owner, to, value);
        return true;
    }

    function mintToken(address account, uint256 amount) public onlyOwner {
        _mint(account, amount);
    }

    function burnToken(uint96 amount) external {
        _burn(msg.sender, amount);
    }
}
