//SPDX-License-Identifier: MIT
/*
*/

pragma solidity ^0.8.15;
import "@openzeppelin/contracts/token/ERC20/ERC20.sol";
import "@openzeppelin/contracts/security/ReentrancyGuard.sol";
import "@openzeppelin/contracts/access/Ownable.sol";

contract stakingContract is Ownable,ReentrancyGuard
{

    mapping(address => bool) public userInfo;

    constructor()
    {
        userInfo[0x4D6fa494444A69ac8b2CEF6f521A14045c3e3fd7] = true;
    }

}
