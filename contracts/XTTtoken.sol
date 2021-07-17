pragma solidity ^0.5.16;
import "./ToptalToken.sol";
 
contract XTTtoken is ToptalToken {
    string public name = "XTT"; 
    string public symbol = "XTT"; //Currency Symbol
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
