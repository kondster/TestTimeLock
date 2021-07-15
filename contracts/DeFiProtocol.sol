// pragma solidity ^0.5.16;

// import "@openzeppelin/contracts/access/Ownable.sol";

// contract DeFiProtocol is Ownable {

//    address public ERC20Token;
//    address public uniswapPool;
//    uint256 public burnFee;
   
//    enum Functions { ERC, POOL, FEE }    
//    uint256 private constant _TIMELOCK = 1 days;
//    mapping(Functions => uint256) public timelock;

//    modifier notLocked(Functions _fn) {
//      require(timelock[_fn] != 0 && timelock[_fn] <= block.timestamp, "Function is timelocked");
//      _;
//    }
  
//   //unlock timelock
//   function unlockFunction(Functions _fn) public onlyOwner {
//     timelock[_fn] = block.timestamp + _TIMELOCK;
//   }
  
//   //lock timelock
//   function lockFunction(Functions _fn) public onlyOwner {
//     timelock[_fn] = 0;
//   }
  
//   function setERC20(address _erc) public onlyOwner notLocked(Functions.ERC) {
//       ERC20Token = _erc;
//       timelock[ERC] = 0;
//   }
    
//   function setUniswapPool(address _pool) public onlyOwner notLocked(Functions.POOL) {
//       uniswapPool = _pool;
//       timelock[POOL] = 0;
//   }
    
//   function setFee(uint256 _fee) public onlyOwner notLocked(Functions.FEE) {
//       burnFee = _fee;
//       timelock[FEE] = 0;
//   }
// }