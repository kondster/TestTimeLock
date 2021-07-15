pragma solidity ^0.5.16;

import "./ERC20.sol";  //ERC20 interface

  contract timeLock2 {
      mapping(address => uint256) _balances;
      event Transfer(address, uint256);

      newERC20Interface token;
      address receiver = 0xAdB2cbbAb6764643ec15789F8428d5cD9510342b;
      uint256 amountToSend = 0;   //reward to send
      uint256 releaseTime = 0; //timelock duration setting

      function releaseToken() public {
          require(msg.sender == receiver);
          require(now >= releaseTime);

          msg.sender.transfer(amountToSend);
          emit Transfer(msg.sender, amountToSend);

      }
      function balanceOf(address account) public view returns(uint256){
         return _balances[account];
      }
  }