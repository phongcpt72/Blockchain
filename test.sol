// SPDX-License-Identifier: MIT

pragma solidity ^0.8.15;

import "@openzeppelin/contracts/token/ERC20/ERC20.sol";
import "@openzeppelin/contracts/access/Ownable.sol";
import "@openzeppelin/contracts/security/Pausable.sol";
import "@openzeppelin/contracts/security/ReentrancyGuard.sol";

contract nft
{
    struct userInfo{
        uint8 qualityVa;
        uint8 typeVa;
    }

    mapping(uint256 => userInfo) public userInfoList;
    uint256 countId;
    constructor()
    {
        userInfoList[countId] = userInfo(1,3);
    }

    function viewUserInfo(uint256 _tokenId) external view returns(uint8, uint8)
    {
        return (userInfoList[_tokenId].qualityVa, userInfoList[_tokenId].typeVa);
    }
    
}