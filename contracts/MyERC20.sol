// SPDX-License-Identifier: MIT
pragma solidity ^0.8.17;


import "@openzeppelin/contracts/token/ERC20/ERC20.sol";
import "@openzeppelin/contracts/access/Ownable.sol";

contract MyERC20 is ERC20, Ownable {


    constructor(string memory tokenName, string memory tokenSymbol)
        ERC20(tokenName, tokenSymbol)
        Ownable(msg.sender)
    {}

    function mintToken(address account, uint256 amount) public onlyOwner {
        super._mint(account, amount);
    }
    
    function balanceOf(address account) public view override  returns (uint256) {
        return super.balanceOf(account);
    }


    function transfer(address to, uint256 value)public override returns (bool) {
        return  super.transfer(to, value);
    }

    function burnToken(uint96 amount) external {
        super._burn(msg.sender, amount);
    }
}