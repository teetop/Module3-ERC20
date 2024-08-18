
# MyERC20

This Solidity program is a simple ERC-20 smart contract that allows the owner to mint tokens for users, while users can transfer tokens between themselves and also burn their owned tokens.

## Description

This program is a simple contract written in Solidity, a programming language for developing smart contracts on the Ethereum blockchain. The smart contract inherited the Openzeppelin ERC-20 and Ownable smart contract

``` javascript
import "@openzeppelin/contracts/token/ERC20/ERC20.sol";
import "@openzeppelin/contracts/access/Ownable.sol";
```

and from the ERC-20 contract I implemented the ```mint, transfer, balanceOf, burnToken``` functions.

- ```mintToken```: allows only the owner of the contract to mint tokens for users.
- ```transfer```: allows a user to transfer their tokens to another user
- ```burnToken```: allows users to check their no-longer-needed tokens, which will be removed from the total supply of the token in circulation.
- ```balanceOf```: allows for the balance of a user whose address is supplied to checked.

# Getting Started

## Executing program

You can use Remix, an online Solidity IDE to run this program. To get started, go to the Remix website at https://remix.ethereum.org/.

Once you are on the Remix website, create a new file by clicking on the "+" icon in the left-hand sidebar. Save the file with a .sol extension (e.g., MyERC20.sol). Copy and paste the following code into the file:

```javascript
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
```

To compile the code, click on the "Solidity Compiler" tab in the left-hand sidebar. Make sure the "Compiler" option is set to "0.8.17" (or another compatible version), and then click on the "Compile MyERC20.sol" button.

Once the code is compiled, you can deploy the contract by clicking on the "Deploy & Run Transactions" tab in the left-hand sidebar. Select the "MyERC20" contract from the dropdown menu, and then click on the "Deploy" button.

Once the contract is deployed, you can interact with it the contract.

# Authors

Temitope Taiwo

# License

This project is licensed under the MIT License - see the LICENSE.md file for details

