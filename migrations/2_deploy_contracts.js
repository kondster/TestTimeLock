var TimeLockedWalletFactory = artifacts.require("TimeLockedWalletFactory");

var CAKEToken = artifacts.require("ToptalToken");
module.exports = function(deployer) {
  deployer.deploy(TimeLockedWalletFactory);
  
  deployer.deploy(ToptalToken);
};
