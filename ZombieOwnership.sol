pragma solidity ^0.4.19;

import "./ZombieBattle.sol";
import "./ERC721.sol";

contract ZombieOwnership is ZombieAttack, ERC721 {

  function balanceOf(address _owner) public view returns (uint256 _balance) {
    return ownerZombieCount[_owner];
  }

  function ownerOf(uint256 _tokenId) public view returns (address _owner) {
    return zombieToOwner[_tokenId];
  }

}
