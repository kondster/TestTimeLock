pragma solidity ^0.5.16;
import "./ToptalToken.sol";
 
contract CAKEtoken is ToptalToken {
    string public name = "CAKE"; 
    string public symbol = "CAKE"; //Currency Symbol
    uint public decimals = 18; // 1ETH is start from 18digit 
    uint public totalSupply  = 210000000 * (10 ** decimals); 
    string public version = 'v0.1';
 
    
    uint256 public unitsOneEthCanBuy;     // 1ETH 
    uint256 public totalEthInWei;         
    address public fundsWallet;           
    //construct
    function CAKEtoken() public {
        balances[msg.sender] = totalSupply;
    }
}