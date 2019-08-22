var Migrations = artifacts.require("./BankLife.sol");

module.exports = function(deployer) {
  deployer.deploy(Migrations);
};
