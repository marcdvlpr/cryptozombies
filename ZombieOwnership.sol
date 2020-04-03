pragma solidity ^0.4.19;

import "./ZombieBattle.sol";
import "./ERC721.sol";

contract ZombieOwnership is ZombieAttack, ERC721 {

  function balanceOf(address _owner) public view returns (uint256 _balance) {
    return ownerZombieCount[_owner];
  }

}
